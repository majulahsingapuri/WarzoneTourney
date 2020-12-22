Rails.application.routes.draw do
  devise_for :users
  resources :teams
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Setting main page
  root 'main#index'
end
