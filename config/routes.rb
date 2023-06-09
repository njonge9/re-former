Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  # get 'users/edit/:id'
  resources :users, only: [:new, :create,:edit, :update]
end
