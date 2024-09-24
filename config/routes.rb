Rails.application.routes.draw do
  resources :values
  resources :images
  resources :themes
  resources :users

  post '/auth/login' => "auth#login"
  get '/auth/current' => "auth#current"

  get '/auth/logout' => "auth#logout"
  post '/auth/register' => "auth#register"
  
  # config/routes.rb
  get '/assets/*file', to: 'assets#serve'
  
  get '/images', to: 'images#index'
  get '/images.json', to: 'images#index'

  root :to => 'main#index'

end
