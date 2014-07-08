
FactoryGirl.define do
  factory :user do
    email                 { Faker::Internet.email }
    password              { "12345678" }
    password_confirmation { "12345678" }
    first_name "David"
    last_name "Heinemeier"
    height 1.81
    weight 90
    phone "951754033"

    trait :admin do
      email "admin@lain.net"
      after(:create) {|user| user.add_role(:admin)}
    end

    trait :blogger do
      email "blogger@lain.net"
      after(:create) {|user| user.add_role(:blogger)}
    end

    trait :user do
      email "user@lain.net"
      after(:create) {|user| user.add_role(:user)}
    end
  end

end
