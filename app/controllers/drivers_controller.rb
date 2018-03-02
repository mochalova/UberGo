class DriversController < ActionController::Base
  def create
    @driver = Driver.new
    if @driver.update_attributes(driver_params)
      # success
    else
      # error
    end
  end

  private

  def driver_params
    params.require(:driver).permit(:last_name, :city, driver_license_front_attributes: [:file])
  end
end
