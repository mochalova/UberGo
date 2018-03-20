class Admins::DriversController < ActionController::Base
  before_action :authenticate_user!

  def index
    @drivers = Driver.all
  end

  def show
    @driver = Driver.find params[:id]
  end

  def edit
    @driver = Driver.find params[:id]
  end
end
