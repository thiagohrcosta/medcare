class AppointmentsController < ApplicationController
  before_action :set_appointment, except: [:index, :new, :create]

  def index
    @appointments = Appointment.all
  end

  def show;end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
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
end
