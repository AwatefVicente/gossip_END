Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

#------------------------------views/main----------------------------------#
  root 'main#home'
  get '/welcome/:first_name', to: 'main#welcome'


#------------------------------views/gossips----------------------------------#
#   get 'gossips/edit'
#   get 'gossips/', to: 'gossips#index'
#   get 'gossips/new', to: 'gossips#new'
#   get 'gossips/show', to: 'gossips#show'
#   post '/gossips', to: 'gossips#create'

# #------------------------------views/users----------------------------------#
#   get 'users/new', to: 'users#new'
#   get 'users/show', to: 'users#show'


#---------------------------------resources----------------------------------#
  resources :gossips
  resources :users

end
