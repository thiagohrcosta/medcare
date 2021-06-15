class PatientsController < ApplicationController
  before_action :set_patient, except: [:index, :new, :create]

  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end

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

  def edit
  end

  def update
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
end
