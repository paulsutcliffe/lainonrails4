Rails.application.routes.draw do
  
  resources :blogs

  resources :posts

  resources :noticia

  get 'inicio/index'

  devise_for :admins, :controllers => { :registrations => "admins/registrations" }, :path => "admins", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }
  
  devise_for :users
  
  resources :ads

    root to: "inicio#index"

end
