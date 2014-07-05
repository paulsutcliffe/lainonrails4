require "faker"

FactoryGirl.define do
  factory :article do
    title     { Faker::Lorem.sentence }
    content   { Faker::Lorem.paragraph }
    image     { Rack::Test::UploadedFile.new(File.join(Rails.root,'features','support','image.png'))}
    slug      { name ? name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '') : Faker::Internet.slug('foo bar', '-')}
    country   { association :country }
  end
end
