require 'rails_helper'

RSpec.describe Appointment, type: :model do
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
