class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :user

  def self.create_appointment(user, doctor)
    Appointment.create(user_id: user, doctor_id: doctor)
  end
end
