Rails.application.routes.draw do

  resources :products

  get 'inicio/index'

  devise_for :users

  resources :ads

  root "inicio#index"

end
