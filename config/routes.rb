Rails.application.routes.draw do
  root 'users#index'

  resources :users

  mount Events::API => '/'

  namespace :admin do 
    resources :users
  end
end
