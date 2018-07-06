class Document < ApplicationRecord
  KINDS = ['license_front', 'license_back', 'tech_front', 'tech_back', 'osago']

  belongs_to :driver
  has_one    :attach, dependent: :destroy, inverse_of: :document

  validates :kind, inclusion: { in: KINDS }

  accepts_nested_attributes_for :attach, allow_destroy: true

  def file
    (attach || build_attach).file
  end

  def file= file
    attach = (attach || build_attach).assign_attributes(file: file)
  end
end
