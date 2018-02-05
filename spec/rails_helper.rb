ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'spec_helper'
require 'rspec/rails'
require 'capybara/rspec'
require 'capybara/webkit'
# require 'capybara-screenshot/rspec'
# require 'factory_girl'
# require 'factory_girl_rails'
# require 'devise'
# require 'simplecov'
require 'site_prism'
require File.expand_path('../support/pages/general_page', __FILE__)
require File.expand_path('../support/pages/general_form', __FILE__)

SimpleCov.start 'rails'

ActiveRecord::Migration.maintain_test_schema!

Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }
Capybara.javascript_driver = :webkit
# Capybara.save_path = 'tmp/capybara'
# Capybara::Screenshot.prune_strategy = { keep: 10 }

Capybara::Webkit.configure(&:block_unknown_urls)

RSpec.configure do |config|
  # config.include Devise::TestHelpers, type: :controller
  config.include Warden::Test::Helpers
  # config.include FactoryGirl::Syntax::Methods
  config.include ActionDispatch::TestProcess, type: :feature
  # config.include WaitForAjaxFinishing,        type: :feature #
  # config.include JsHelpers,                   type: :feature #
  config.include ActionView::Helpers,         type: :feature
  config.use_transactional_fixtures = false
  config.infer_spec_type_from_file_location!
  config.order = :random

  Warden.test_mode!
  config.after :each do
    Warden.test_reset!
  end

  Capybara.ignore_hidden_elements = true

  config.before :each do
    if Capybara.current_driver == :rack_test
      DatabaseCleaner.strategy = :transaction
    else
      DatabaseCleaner.strategy = :truncation
    end
    DatabaseCleaner.start
  end

  config.after do
    DatabaseCleaner.clean
  end
end
