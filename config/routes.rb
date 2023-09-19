Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :tran_groups do
  resources :tran_details, only: [:index, :show, :new, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'tran_groups#index'
end
