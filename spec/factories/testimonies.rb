# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :testimony do
    name "MyString"
    content "MyText"
    testimony_type "MyString"
    image "MyString"
    video_link "MyString"
    slug "MyString"
  end
end
