class PagesController < ApplicationController

  def dashboard
    @appointments_count = Appointment.where('ends_at <= ?', DateTime.now).count
    @unique_count_patients = Appointment.select('distinct(patient_id)').where('ends_at <= ?', DateTime.now).count

    @q = Doctor.ransack(params[:q])
    @doctor = @q.result(distinct: true)
  end
end
