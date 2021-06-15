require 'rails_helper'

RSpec.describe Doctor, type: :model do
  it 'Doctor is valid with valid attributes' do
    doctor = Doctor.new(
      name: 'Derek Shepherd',
      crm: '90123',
      crm_uf: 'MG'
    )
    expect(doctor).to be_valid
  end

  it 'Is not valid without a name' do
    doctor = Doctor.new(
      name: '',
      crm: '90123',
      crm_uf: 'MG'
    )
    expect(doctor).to_not be_valid
  end

  it 'Is not valid without a CRM' do
    doctor = Doctor.new(
      name: 'Derek Shepherd',
      crm: '',
      crm_uf: 'MG'
    )
    expect(doctor).to_not be_valid
  end

  it 'Is not valid without a CRM_UF' do
    doctor = Doctor.new(
      name: 'Derek Shepherd',
      crm: "90123",
      crm_uf: ""
    )
    expect(doctor).to_not be_valid
  end

  # it 'Is not valid with duplicate CRM / UF' do

  # end

  it { should validate_uniqueness_of(:crm).scoped_to(:crm_uf)}
end
