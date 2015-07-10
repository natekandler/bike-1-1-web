Rails.application.routes.draw do
  root 'users#index'

  resources :users

  namespace :admin do 
    resources :users
  end
end
