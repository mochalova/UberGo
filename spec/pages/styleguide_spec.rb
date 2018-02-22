require 'rails_helper'

feature 'Styleguide', type: :feature do
  let(:styleguide_page) { StyleguidePage.new }

  before do
    styleguide_page.load
  end

  it { expect(styleguide_page).to have_header }
end
