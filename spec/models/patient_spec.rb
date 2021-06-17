require 'rails_helper'

RSpec.describe Patient, type: :model do
  context 'Patient Validation' do
    it 'Patient is valid with valid attributes' do
      patient = Patient.new(
        name: 'Meredith Grey',
        cpf: '51342130200',
        birth_date: 1978-01-01
        )
      expect(patient).to be_valid
    end

    it 'Is not valid without a name' do
      patient = Patient.new(
        name: '',
        cpf: '51342130200',
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
        cpf: '51342130200',
        birth_date: ""
      )
      expect(patient).to_not be_valid
    end
  end

  context 'CPF Validation' do
    it { should validate_uniqueness_of(:cpf) }

    it 'Is not valid if CPF has less then 11 numbers' do
      patient = Patient.new(
        name: 'Meredith Grey',
        cpf: '513421302',
        birth_date: 1978-01-01
      )
      expect(patient).to_not be_valid
    end

    it 'Is not valid if CPF does not respect CPF logic' do
      patient = Patient.new(
        name: 'Meredith Grey',
        cpf: '20010012300',
        birth_date: 1978-01-01
      )
      expect(patient).to_not be_valid
      end

    it 'Is not valid if CPF != integer' do
      patient = Patient.new(
        name: 'Meredith Grey',
        cpf: '513421302aa',
        birth_date: 1978-01-01
      )
      expect(patient).to_not be_valid
    end
  end

  context 'Patient associations' do
    it { should have_many(:appointments) }
  end



end
