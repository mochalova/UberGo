class DashboardsController < ActionController::Base
  layout 'layouts/application'

  def show
    # put any code here that you need
    # (although for a static view you probably won't have any)
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
end
