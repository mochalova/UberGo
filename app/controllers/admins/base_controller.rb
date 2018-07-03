class Admins::BaseController < ActionController::Base
  before_action :authenticate_user!
  before_action :check_admin_role

  private
  def check_admin_role
    unless current_user.admin?
      raise ActionController::RoutingError.new('permission denied')
    end
  end
end
