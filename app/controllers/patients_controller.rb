class PatientsController < ApplicationController
  before_action :set_patient, except: [:index, :new, :create]
  before_action :set_counter, only: [:index, :new, :edit]

  def index
    @patients = Patient.all
    @appointments_count = Appointment.all.where("ends_at <= ?", DateTime.now).count
    @unique_count_patients = Appointment.select('distinct(patient_id)').where("ends_at <= ?", DateTime.now).count
  end

  def show;end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to patients_path
    else
      render :new
    end
  end

  def edit;end

  def update
    if @patient.update(patient_params)
      redirect_to patients_path
    else
      render :new
    end
  end

  def destroy
    @patient.destroy
    redirect_to patients_path
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :cpf, :birth_date)
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def set_counter
    @appointments_count = Appointment.all.where("ends_at <= ?", DateTime.now).count
    @unique_count_patients = Appointment.select('distinct(patient_id)').where("ends_at <= ?", DateTime.now).count
  end
end
