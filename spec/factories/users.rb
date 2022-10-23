FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    name { Faker::Name.name }
    phone { '0507387969' }
    password { "password" }
    password_confirmation { "password" }
  end
end