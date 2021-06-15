class PagesController < ApplicationController

  def index
  end

  def dashboard
    @appointments_count = Appointment.all.where("ends_at <= ?", DateTime.now).count
    @unique_count_patients = Appointment.select('distinct(patient_id)').where("ends_at <= ?", DateTime.now).count
  end
end
