Rails.application.routes.draw do
  get 'groups/new'
  get 'communities/show'
  devise_for :users
  resources :users
  root to: 'meetings#index'
  resources :meetings
  resources :messages
  resources :rooms
  
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
