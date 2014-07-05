Rails.application.routes.draw do
  devise_for :users
  resources :ads
  root "ads#index"

end
