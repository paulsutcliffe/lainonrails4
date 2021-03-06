FactoryGirl.define do
  factory :product do
    name        { Faker::Name.name }
    description { Faker::Lorem.paragraph }
    image       { Rack::Test::UploadedFile.new(File.join(Rails.root,'features','support','image.png'))}
    country_id  { 1 }
  end
end
