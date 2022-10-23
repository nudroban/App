class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :user

  def change_state
    update(active: true)
  end

end
