Rails.application.routes.draw do
  # post '/users/login', to: 'users#login', as: 'login_path'
  get '/users/:id/activities', to: 'users#user_activities', as: 'user_activities'

  get "/welcome", to: "users#welcome", as: "welcome"

  get '/mainpage', to: 'sessions#mainpage', as: 'mainpage'

  get '/login', to: 'sessions#new', as: 'login'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy', as: 'logout'

  get '/add_funds', to: 'users#add_funds', as: 'add_funds'

  resources :reservations
  resources :activities

  resources :users

  get '/reviews/new/:activity_id', to: 'reviews#new', as: 'new_review'
  resources :reviews, only: [:create]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
