# frozen_string_literal: true
class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[edit update show]
  def create
    doctor = Doctor.find(params[:doctor_id])
    if doctor.appointments.where(active: false).count >= 10
      redirect_to categories_path, alert: 'Sorry! Doctor was buzy!'
    else
      @appointment = current_user.appointments.create(doctor_id: params[:doctor_id])
      redirect_to root_path, notice: 'Success!!! Appointment create'
    end
  end

  def edit

  end
  def update
    doctor = current_doctor
    @appointment.change_state
    if @appointment.update(recomendation: params[:appointment][:recomendation])
      flash[:notice] = 'Recommendation was successfully created'
      redirect_to doctor_appointments_path(doctor)
    else
      render :show
    end
  end

  def index
    doctor = current_doctor
    @doctors_appointments = doctor.appointments.order(active: :desc)
  end

  def show

  end
  
  private
  
  def set_appointment
    @appointment = Appointment.find(params[:id])
  end
end
