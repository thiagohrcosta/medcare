class Doctor < ApplicationRecord
  has_many :appointments, dependent: :restrict_with_error

  validates :name, presence: true
  validates :crm, uniqueness: { scope: [:crm_uf] }
  validates :crm, presence: true, numericality: { only_integer: true }
  validates :crm_uf, length: { minimum: 2, maximum: 2}, presence: true
end
