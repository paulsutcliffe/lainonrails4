# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    first_name    { Faker::Name.first_name }
    last_name     { Faker::Name.last_name }
    email         { Faker::Internet.email }
    phone         { Faker::Number.number(9) }
    address       { Faker::Address.street_address }
    district      { Faker::Address.city }
    province      { Faker::Address.city }
    city          { Faker::Address.city }
    message       { Faker::Lorem.paragraph }
    country_id    { 1 }
  end
end
