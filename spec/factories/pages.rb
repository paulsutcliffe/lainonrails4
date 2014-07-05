require "faker"

FactoryGirl.define do
  factory :page do
    title   { Faker::Lorem.sentence }
    content { Faker::Lorem.paragraph }

    trait :lain do
      title   "LAIN"
      content "Contenido para página Lain."
    end

    trait :metodo do
      title   "Método"
      content "Contenido para página Método."
    end
  end
end
