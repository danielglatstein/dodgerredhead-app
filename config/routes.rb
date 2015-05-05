Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :posts

  root to: "posts#index"

  get '/about', to: 'pages#about'

  get '/salsa', to: 'pages#salsa'

  get '/zara_aina', to: 'pages#zara_aina'

  get '/artwork', to: 'pages#artwork'
  
end
