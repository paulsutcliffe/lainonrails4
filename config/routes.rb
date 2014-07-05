Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  resources :testimonies, path: "testimonios"

  resources :articles, path: "blog"

  resources :products, path: "productos"

  get 'inicio/index'

  devise_for :users

  resources :ads, "anuncios"

  root "inicio#index"

end
