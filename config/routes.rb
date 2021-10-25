Rails.application.routes.draw do
  get 'sessions/new'
  resources :users, only: [:new, :create]
  resources :fighters
  resources :sessions
  get 'home/about'
  root 'home#index'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  delete 'sessions', to: 'sessions#destroy'


end
