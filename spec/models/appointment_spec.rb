require 'rails_helper'

RSpec.describe Appointment, type: :model do
  let(:patient) { Patient.create(name: 'Nicole Herman', cpf: '51342130200', birth_date: Time.now) }
  let(:doctor) { Doctor.create(name: 'Amelia Sheperd', crm: '122101', crm_uf: 'MG') }

  subject(:appointment) { Appointment.create(doctor_id: doctor, patient_id: patient, starts_at: DateTime.now) }

  context 'Appointment Validation' do
    it { should validate_presence_of(:patient_id) }
    it { should validate_presence_of(:doctor_id) }
    it { should validate_presence_of(:starts_at) }
    it { should validate_presence_of(:ends_at) }
  end

  context 'Appointment associations' do
    it { should belong_to(:doctor) }
    it { should belong_to(:patient) }
  end
end
