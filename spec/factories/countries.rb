require "faker"

FactoryGirl.define do
  factory :country do
    name { Faker::Name.name }
    code { [:pe, :cr] }
  end
end
