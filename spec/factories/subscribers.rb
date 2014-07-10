# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subscriber do
    first_name  { Faker::Name.name }
    last_name   { Faker::Name.name }
    email       { Faker::Internet.email }
    phone       { Faker::PhoneNumber }
    country_id  { 1 }
  end
end
