# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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


