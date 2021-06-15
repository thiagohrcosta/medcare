require 'rails_helper'

RSpec.describe Patient, type: :model do
  context 'Patient Validation' do
    it 'Patient is valid with valid attributes' do
      patient = Patient.new(
        name: 'Meredith Grey',
        cpf: '12312312300',
        birth_date: 1978-01-01
        )
      expect(patient).to be_valid
    end

    it 'Is not valid without a name' do
      patient = Patient.new(
        name: '',
        cpf: '12312312300',
        birth_date: 1978-01-01
        )
      expect(patient).to_not be_valid
    end

    it 'Is not valid without a CPF' do
      patient = Patient.new(
        name: 'Meredith Grey',
        cpf: '',
        birth_date: 1978-01-01
        )
      expect(patient).to_not be_valid
    end

    it 'Is not valid without a Birthdate' do
      patient = Patient.new(
        name: 'Meredith Grey',
        cpf: '12312312300',
        birth_date: ""
      )
      expect(patient).to_not be_valid
    end
  end

  context 'CPF Validation' do
    it { should validate_uniqueness_of(:cpf)}

    it 'CPF is not valid wiht less then 11 numbers' do
      patient = Patient.new(
        name: 'Meredith Grey',
        cpf: '123456789',
        birth_date: 1978-01-01
      )
      expect(patient).to_not be_valid
    end

    it 'CPF only acept number' do
      patient = Patient.new(
        name: 'Meredith Grey',
        cpf: '123456789aa',
        birth_date: 1978-01-01
      )
      expect(patient).to_not be_valid
    end
  end



end
