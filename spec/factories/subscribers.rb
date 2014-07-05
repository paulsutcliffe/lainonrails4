# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subscriber do
    first_name "MyString"
    last_name "MyString"
    email "MyString"
    phone "MyString"
    country_id 1
  end
end
