class PagesController < ApplicationController

  def dashboard
    @appointments_count = Appointment.where('ends_at <= ?', DateTime.now).count
    @unique_count_patients = Appointment.select('distinct(patient_id)').where('ends_at <= ?', DateTime.now).count

    @query_doctors = Doctor.ransack(params[:q])
    @doctor = @query_doctors.result(distinct: true)
  end
end
