# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :opportunity do
    title       { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    image       { Rack::Test::UploadedFile.new(File.join(Rails.root,'features','support','image.png'))}
    active      true
    country_id  { 1 }
  end
end
