class AppointmentsController < ApplicationController
  before_action :set_appointment, except: [:index, :new, :create]
  before_action :set_counter, only: [:index, :new, :update]

  def index
    @appointments = Appointment.all
  end

  def show;end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.ends_at = @appointment.starts_at + 30.minutes
      if @appointment.save
        redirect_to appointments_path
      else
        render :new
      end
  end

  def edit;end

  def update
    if @appointment.update(appointment_params)
      redirect_to appointments_path
    else
      render :new
    end
  end

  def destroy
    @appointment.destroy
    redirect_to appointments_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:starts_at, :ends_at, :doctor_id, :patient_id)
  end

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def set_counter
    @appointments_count = Appointment.where("ends_at <= ?", DateTime.now).count
    @unique_count_patients = Appointment.select('distinct(patient_id)').where("ends_at <= ?", DateTime.now).count
  end
end
