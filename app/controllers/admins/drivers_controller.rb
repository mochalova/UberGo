class Admins::DriversController < Admins::BaseController
  def create
    update_driver new_driver
  end

  def update
    update_driver driver
  end

  private
  def update_driver driver
    if driver.update_attributes(driver_params)
      redirect_to admins_drivers_url
    else
      render(driver.persisted? ? :edit : :new)
    end
  end

  helper_method :drivers
  def drivers
    @drivers ||= Driver.all
  end

  helper_method :driver
  def driver
    @driver ||= drivers.find params[:id]
  end

  helper_method :new_driver
  def new_driver
    @new_driver ||= Driver.new(
      driver_license_front: Document.new(kind: :license_front),
      driver_license_back: Document.new(kind: :license_back),
      driver_tech_front: Document.new(kind: :tech_front),
      driver_tech_back: Document.new(kind: :tech_back),
      driver_osago: Document.new(kind: :osago)
    )
  end

  def driver_params
    params.require(:driver).permit(
      :first_name, :last_name, :phone, :email, :bank, :city,
      driver_license_front_attributes: [:id, :file],
      driver_license_back_attributes: [:id, :file],
      driver_tech_front_attributes: [:id, :file],
      driver_tech_back_attributes: [:id, :file],
      driver_osago_attributes: [:id, :file]
    )
  end
end
