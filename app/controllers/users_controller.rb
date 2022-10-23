class UsersController < ApplicationController
  def show
    user = current_user
    @user_appointments = user.appointments.order(active: :desc)
  end
end
