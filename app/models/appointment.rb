class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  validates :patient_id, presence: true
  validates :doctor_id, presence: true
  validates :starts_at, presence: true
  validates :ends_at, presence: true

  validates :starts_at, uniqueness: true
  validate :oppening_hour?
  validate :close_hour?
  validate :lunch_time?

  def oppening_hour?
    if starts_at.hour < 9
      errors.add :starts_at, 'Horário indisponível. A clínica ainda não abriu'
    end
  end

  def lunch_time?
    if starts_at.hour >= 12 && starts_at.hour <= 13
      errors.add :starts_at, 'Horário de almoço.'
    end
  end

  def close_hour?
    if starts_at.hour > 18
      errors.add :starts_at, 'Horário indisponível. Clinica fechada.'
    end
  end

end
