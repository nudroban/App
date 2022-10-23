class AppointmentsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :show]
  before_action :authenticate_doctor!, only: [:edit, :index]

  def create
    user = current_user
    doctor = Doctor.find_by(params[:doctor_id])
    if doctor.appointments.where(active: false).count < 10
      user.doctors << doctor
      redirect_to root_path, notice: "Success!!! Appointment create"
    else
      redirect_to categories_path, alert: "Sorry! Doctor was buzy!"
    end
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    doctor = current_doctor
    @appointment = Appointment.find(params[:id])
    @appointment.change_state
    if @appointment.update(recomendation: params[:appointment][:recomendation])
      flash[:notice] = "Recommendation was successfully created"
      redirect_to appointments_path(doctor)
    else
      render :show
    end
  end

  def index
    doctor = current_doctor
    @doctors_appointments = doctor.appointments.order(active: :desc)
  end

  def show
    @appointment = Appointment.find(params[:id])
  end
end
