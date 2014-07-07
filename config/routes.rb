Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  get "/countries" => "countries#index", path: "paises"
  root "countries#index"

  scope( path_names: {new: "nuevo", edit: "editar"}) do
    scope "(:locale)", :locale => /#{I18n.available_locales.join("|")}/ do
      get "/" => "inicio#index", as: "home"
      post "/free_call" => "inicio#free_call_post", as: "free_call_post"
      resources :pages, path: "lain"
      resources :testimonies, path: "testimonios"
      resources :articles, path: "blog"
      resources :products, path: "productos"
      resources :offices, path: "sucursales"
      resources :subscribers, path: "suscripciones"
      resources :computests
      resources :contacts, path: "contactos"
      resources :banners
      resources :opportunities, path: "oportunidades"
      devise_for :users, :path => "usuarios",
        :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' },
        :controllers => {:registrations => "users/registrations"}
      resources :users, :path => "usuarios"
      # resources :ads, "anuncios"
    end
  end
end
