Rails.application.routes.draw do
  
  root 'index#home'

  resources :opinions, only: [:new, :create]
  devise_for :users
end
