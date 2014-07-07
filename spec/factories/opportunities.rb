# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :opportunity do
    title "MyString"
    description "MyText"
    image "MyString"
    active false
    country_id 1
  end
end
