class Doctor < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  VALID_PHONE = /\A(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{4}\z/
  validates :phone, uniqueness: true,
                    format: { with: VALID_PHONE },
                    presence: true

  has_many :appointments
  has_many :users, through: :appointments
  belongs_to :category

  def email_required?
    false
  end

  def email_changed?
    false
  end
end
