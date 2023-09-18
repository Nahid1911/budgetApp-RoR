Rails.application.routes.draw do
  devise_for :users
  resources :tran_details
  resources :tran_groups
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'tran_groups#index'
end
