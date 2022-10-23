class AppointmentsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :show]
  before_action :authenticate_doctor!, only: [:update, :show]

  def new

  end

  def create
    user = current_user
    doctor = Doctor.find_by(params[:doctor_id])
    if user.doctors.count < 9
      user.doctors << doctor
      redirect_to root_path, notice: "Success!!! Appointment create"
    else
      redirect_to categories_path, alert: "Sorry! Doctor was buzy!"
    end
  end

  def index
    user = current_user
    doctor = current_doctor

    @doctors_appointments = doctor.appointments
  end
end