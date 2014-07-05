Rails.application.routes.draw do

  get 'inicio/index'

  devise_for :users

  resources :ads

  root "inicio#index"

end
