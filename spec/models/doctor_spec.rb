require 'rails_helper'

RSpec.describe Doctor, type: :model do
  let(:doctor) { FactoryBot.build :doctor }
  subject { doctor }

  it { should respond_to(:phone) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }

  it { should be_valid }
  it { should validate_presence_of(:phone) }
  it { should validate_uniqueness_of(:phone).case_insensitive }
  it { should validate_confirmation_of(:password) }
end
