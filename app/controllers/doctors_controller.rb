class DoctorsController < ApplicationController
  before_action :set_doctor, except: [:index, :new, :create]
  before_action :set_counter, only: [:index, :new, :edit]

  def index
    @query_doctors = Doctor.ransack(params[:q])
    @doctor = @query_doctors.result(distinct: true)

    @doctor_completed_appointments = Appointment.joins(:doctor).where(doctor_id: @doctor).and(Appointment.joins(:doctor).where('ends_at <= ?', DateTime.now)).count
    @doctor_unique_patients = Appointment.joins(:doctor).where(doctor_id: @doctor).distinct.count('patient_id')
  end

  def show;end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to doctors_path
    else
      render :new
    end
  end

  def edit;end

  def update
    if @doctor.update(doctor_params)
      redirect_to doctors_path
    else
      render :new
    end
  end

  def destroy
    @doctor.destroy
    redirect_to doctors_path
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :crm, :crm_uf)
  end

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def set_counter
    @appointments_count = Appointment.where('ends_at <= ?', DateTime.now).count
    @unique_count_patients = Appointment.select('distinct(patient_id)').where('ends_at <= ?', DateTime.now).count
  end
end
