Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  get "/countries" => "countries#index", path: "paises"
  root "countries#index"

  scope "(:locale)", :locale => /#{I18n.available_locales.join("|")}/ do
    get "/" => "inicio#index"
    resources :pages, path: "lain"
    resources :testimonies, path: "testimonios"
    resources :articles, path: "blog"
    resources :products, path: "productos"
    resources :offices, path: "sucursales"
    resources :subscribers
    resources :computests
    get 'inicio/index'
    devise_for :users, :path => "usuarios", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }
    resources :ads, "anuncios"
  end
end
