class UsersController < ApplicationController
  def show
    user = current_user
    @user_appointments = user.appointments
  end

  def recomendation
    user = current_user
    @appointments = user.appointments
  end
end
