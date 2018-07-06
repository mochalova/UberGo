class Driver < ApplicationRecord
  has_many :documents, dependent: :destroy

  has_one :driver_license_front, ->{where(documents: { kind: 'license_front' })}, class_name: 'Document', inverse_of: :driver
  has_one :driver_license_back, ->{where(documents: { kind: 'license_back' })}, class_name: 'Document', inverse_of: :driver
  has_one :driver_tech_front, ->{where(documents: { kind: 'tech_front' })}, class_name: 'Document', inverse_of: :driver
  has_one :driver_tech_back, ->{where(documents: { kind: 'tech_back' })}, class_name: 'Document', inverse_of: :driver
  has_one :driver_osago, ->{where(documents: { kind: 'osago' })}, class_name: 'Document', inverse_of: :driver

  accepts_nested_attributes_for :driver_license_front, allow_destroy: true
  accepts_nested_attributes_for :driver_license_back, allow_destroy: true
  accepts_nested_attributes_for :driver_tech_front, allow_destroy: true
  accepts_nested_attributes_for :driver_tech_back, allow_destroy: true
  accepts_nested_attributes_for :driver_osago, allow_destroy: true
end
