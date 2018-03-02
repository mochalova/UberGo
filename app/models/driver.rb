class Driver < ApplicationRecord
  has_one :driver_license_front, class_name: 'Attach'

  accepts_nested_attributes_for :driver_license_front
end
