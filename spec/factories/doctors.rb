FactoryBot.define do
  factory :doctor do
    phone { '0500000000' }
    name { Faker::Name.name }
    password { "password" }
    password_confirmation { "password" }
    category
  end
end