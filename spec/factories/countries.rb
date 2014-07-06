require "faker"

FactoryGirl.define do
  factory :country do
    name { Faker::Name.name }
    code { I18n.default_locale }
  end
end
