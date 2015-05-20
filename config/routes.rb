Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => 'registrations'}
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :posts
  resources :users, :only => [:index, :show, :edit, :update ]
  
  root to: "posts#index"

  get '/about', to: 'pages#about'

  get '/salsa', to: 'pages#salsa'

  get '/zara_aina', to: 'pages#zara_aina'

  get '/artwork', to: 'pages#artwork'
  
  get 'auth/:provider', to: 'authentications#create'
  
  get '/signout' => 'authentications#destroy', :as => :signout

end
