class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
  validates :phone, uniqueness: true

  def email_required?
    false
  end

  def will_save_change_to_email?
    false
  end
end
