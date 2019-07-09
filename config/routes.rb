Rails.application.routes.draw do
  # post '/users/login', to: 'users#login', as: 'login_path'

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'


  resources :reservations

  resources :activities
    #User routes
  resources :users






  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
