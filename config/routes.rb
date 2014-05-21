Rails.application.routes.draw do
  devise_for :admins, :controllers => { :registrations => "admins/registrations" }, :path => "admins", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }
  resources :ads

end
