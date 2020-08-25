Rails.application.routes.draw do
  devise_for :users
  resources :users
  root to: 'meetings#index'
  resources :meetings
  resources :messages
  resources :rooms
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
