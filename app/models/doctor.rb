class Doctor < ApplicationRecord
  has_many :appointments

  validates :name, presence: true
  validates :crm, uniqueness: { scope: [:crm_uf] }
  validates :crm, presence: true
  validates :crm_uf, presence: true
end
