# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :banner do
    name      { Faker::Name.name }
    location  { Faker::Name.name }
    image     { Rack::Test::UploadedFile.new(File.join(Rails.root,'features','support','image.png'))}
    link      { Faker::Internet.url('example.com') }
    country_id{ 1 }
  end
end
