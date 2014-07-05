# encoding: utf-8
Given /^I am an admin not authenticated$/ do
  visit('/admins/salir')
end

Given /^I am a new, authenticated admin$/ do
  email = 'email@domain.com'
  password = '12345678'
  admin = User.new(:email => email, :password => password, :password_confirmation => password)
  role = Role.new(:name => "SuperAdmin")
  admin.roles << role
  admin.save!

  visit '/usuarios/ingresar'
  fill_in "E-mail", :with => email
  fill_in "Contraseña", :with => password
  click_button "Ingresar"

end
