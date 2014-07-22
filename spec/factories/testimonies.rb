# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :testimony do
    name            { Faker::Name.name }
    content         { Faker::Lorem.paragraph }
    testimony_type  { ["video", "antesydespues"].sample }
    image           { Rack::Test::UploadedFile.new(File.join(Rails.root,'features','support','image.png'))}
    video_link      { "https://www.youtube.com/watch?v=Sb5aq5HcS1A" }
    country_id      { 1 }
    slug            { name ? name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '') : Faker::Internet.slug('foo bar', '-')}
  end
end
