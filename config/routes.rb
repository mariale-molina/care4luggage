Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'index#home'

  resources :opinions, only: [:new, :create]
  devise_for :users

  devise_scope :user do
    get "/logout" => "devise/sessions#destroy", as: :logout
  end

end
