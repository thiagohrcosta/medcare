class Patient < ApplicationRecord
  has_many :appointments

  validates :name, :birth_date, presence: true
  validates :cpf, presence: true, uniqueness: true, length: { is: 11, message: 'precisa ter 11 dígitos' }
  validates :cpf, format: { with: /\A\d+\z/, message: 'deve conter apenas números' }
  validates_cpf_format_of :cpf, message: 'digitado é inválido'
end
