# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :computest do
    first_name "MyString"
    last_name "MyString"
    email "MyString"
    phone "MyString"
    gender "MyString"
    height 1.5
    weight 1.5
    bmi 1
    state "MyString"
    ideal_weight "MyString"
    country_id 1
  end
end
