class StyleguidesController < ActionController::Base
  before_action :authenticate_user!

  layout 'styleguide'

  def show
    # put any code here that you need
    # (although for a static view you probably won't have any)
  end
end
