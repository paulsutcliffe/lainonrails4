# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :computest do
    first_name    { Faker::Name.first_name }
    last_name     { Faker::Name.last_name }
    email         { Faker::Internet.email }
    phone         { Faker::Number.number(9) }
    gender        "Masculino"
    height        1.8
    weight        65
    bmi           20
    state         { Faker::Lorem.sentence }
    ideal_weight  { Faker::Lorem.sentence }
    country       { association :country }
  end
end
