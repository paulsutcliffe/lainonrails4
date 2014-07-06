# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    first_name "MyString"
    last_name "MyString"
    email "MyString"
    phone "MyString"
    address "MyString"
    district "MyString"
    province "MyString"
    city "MyString"
    message "MyText"
    country_id 1
  end
end
