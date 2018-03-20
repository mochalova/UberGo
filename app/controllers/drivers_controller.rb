class DriversController < ActionController::Base
  def index
    @drivers = Driver.all
  end

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
    params.require(:driver).permit(:last_name,
                                   :first_name,
                                   :phone,
                                   :email,
                                   :bank,
                                   :city,
                                   driver_license_front_attributes: [:file],
                                   driver_license_back_attributes: [:file],
                                   driver_tech_front_attributes: [:file],
                                   driver_tech_back_attributes: [:file],
                                   driver_osago_attributes: [:file])
  end
end
