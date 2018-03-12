class Driver < ApplicationRecord
  has_one :driver_license_front, class_name: 'Attach'
  has_one :driver_license_back, class_name: 'Attach'
  has_one :driver_tech_front, class_name: 'Attach'
  has_one :driver_tech_back, class_name: 'Attach'
  has_one :driver_osago, class_name: 'Attach'

  accepts_nested_attributes_for :driver_license_front
  accepts_nested_attributes_for :driver_license_back
  accepts_nested_attributes_for :driver_tech_front
  accepts_nested_attributes_for :driver_tech_back
  accepts_nested_attributes_for :driver_osago
end
