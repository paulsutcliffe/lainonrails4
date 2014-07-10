puts "########################"
puts "###   LOADING DATA   ###"
puts "########################"

puts " "
puts "----------------------------------------"
puts "###     DEFAULT ROLES AND USERS      ###"
puts "----------------------------------------"
puts " "

["admin", "blogger", "user"].each do |role|
  user = FactoryGirl.create(:user, role.to_sym)
  puts 'Email: ' << user.email
  puts 'Pass: ' << user.password
  puts 'Role: ' << role
end

puts " "
puts "-------------------------------------"
puts "###         LOADING PAGES         ###"
puts "-------------------------------------"

privacy_policy  = FactoryGirl.create(:page, :privacy_policy)
puts " --> #{privacy_policy}"
lain_page       = FactoryGirl.create(:page, :lain)
puts " --> #{lain_page}"
method_page     = FactoryGirl.create(:page, :metodo)
puts " --> #{method_page}"

puts " "
puts "----------------------------------------"
puts "###         LOADING ARTICLES         ###"
puts "----------------------------------------"

7.times.each do
  article = FactoryGirl.create(:article)
  puts "-- #{article.title}"
end

puts " "
puts "----------------------------------------"
puts "###         LOADING BANNERS          ###"
puts "----------------------------------------"

Banner::LOCATIONS.values.each do |location|
  banner = FactoryGirl.create(:banner, location: location)
  puts "-- banner #{banner.location}"
end

puts " "
puts "----------------------------------------"
puts "###          LOADING OFFICES         ###"
puts "----------------------------------------"

3.times.each do
  office = FactoryGirl.create(:office)
  puts "-- #{office.name}"
end

puts " "
puts "----------------------------------------"
puts "###       LOADING OPPORTUNITIES      ###"
puts "----------------------------------------"

2.times.each do
  opportunity = FactoryGirl.create(:opportunity)
  puts "-- #{opportunity.title}"
end

puts " "
puts "----------------------------------------"
puts "###         LOADING PRODUCTS         ###"
puts "----------------------------------------"

3.times.each do
  product = FactoryGirl.create(:product)
  puts "-- #{product.name}"
end

puts " "
puts "----------------------------------------"
puts "###         LOADING TESTIMONIES      ###"
puts "----------------------------------------"

3.times.each do
  testimony = FactoryGirl.create(:testimony)
  puts "-- #{testimony.name}"
end
