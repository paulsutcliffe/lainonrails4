puts "########################"
puts "###   LOADING DATA   ###"
puts "########################"

puts " "
puts "----------------------------------------"
puts "###     DEFAULT ROLES AND USERS      ###"
puts "----------------------------------------"
puts " "

["admin", "user"].each do |role|
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
