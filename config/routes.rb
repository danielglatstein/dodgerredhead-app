Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :posts
  resources :users, :only => [:index, :show, :edit, :update ]
  
  root to: "posts#index"

  get '/about', to: 'pages#about'

  get '/salsa', to: 'pages#salsa'

  get '/zara_aina', to: 'pages#zara_aina'

  get '/artwork', to: 'pages#artwork'
  

end
