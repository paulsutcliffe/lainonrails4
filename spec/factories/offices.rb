require "faker"

FactoryGirl.define do
  factory :office do
    name        { Faker::Name.name }
    address     { Faker::Lorem.sentence }
    phone       { Faker::PhoneNumber }
    image       { Rack::Test::UploadedFile.new(File.join(Rails.root,'features','support','image.png'))}
    country     { association :country }
    slug        { name ? name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '') : Faker::Internet.slug('foo bar', '-')}
  end
end