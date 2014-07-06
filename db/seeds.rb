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


