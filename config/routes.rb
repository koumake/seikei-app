Rails.application.routes.draw do
  devise_for :users
  resources :users
  root to: 'reviews#index'
  resources :meetings
  resources :messages
  resources :rooms
  resources :groups do
    resources :speaks
  end 
  resources :reviews do
    resources :comments
  end
  resources :chats do
    resources :talks
  end

  
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
