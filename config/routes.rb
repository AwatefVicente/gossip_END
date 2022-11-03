Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

#------------------------------views/main----------------------------------#
  root 'main#home'
  get '/welcome/:first_name', to: 'main#welcome'

  resources :gossips
  resources :users
  resources :sessions

end
