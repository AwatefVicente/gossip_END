Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root 'main#home'
  get '/welcome/:first_name', to: 'main#welcome'

  get '/gossips', to: 'gossips#index'

  resources :gossips

end
