class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  validates :patient_id, presence: true
  validates :doctor_id, presence: true
  validates :starts_at, presence: true
  validates :ends_at, presence: true
end
