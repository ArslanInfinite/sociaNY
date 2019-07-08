Rails.application.routes.draw do
  get 'reservations/new'
  get 'reservations/edit'
  get 'reservations/index'
  get 'reservations/show'
  get 'admins/index'
  get 'admins/new'
  get 'admins/show'
  get 'reviews/show'
  get 'reviews/edit'
  get 'reviews/new'
  get 'activities/index'
  get 'activities/show'
  get 'users/new'
  get 'users/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
