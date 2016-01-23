Rails.application.routes.draw do
  root 'index#home'
  resources :opinions, only: [:new, :create]
end
