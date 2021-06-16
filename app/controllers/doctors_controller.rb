class DoctorsController < ApplicationController
  before_action :set_doctor, except: [:index, :new, :create]
  before_action :set_counter, only: [:index, :new, :edit]
  def index
    @q = Doctor.ransack(params[:q])
    @doctor = @q.result(distinct: true)
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

  def home
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :crm, :crm_uf)
  end

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def set_counter
    @appointments_count = Appointment.all.where("ends_at <= ?", DateTime.now).count
    @unique_count_patients = Appointment.select('distinct(patient_id)').where("ends_at <= ?", DateTime.now).count
  end
end
