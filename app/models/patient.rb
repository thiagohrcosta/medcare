class Patient < ApplicationRecord
  has_many :appointments

  validates :name, presence: true
  validates :cpf, presence: true, uniqueness: true, length: {is: 11}
  validates :cpf, format: { with: /\A\d+\z/, message: "Digite apenas números"}
  validates :birth_date, presence: true
  validates_cpf_format_of :cpf
end
