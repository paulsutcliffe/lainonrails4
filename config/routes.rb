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
    get 'inicio/index'
    devise_for :users
    resources :ads, "anuncios"
  end
end
