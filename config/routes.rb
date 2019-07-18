Rails.application.routes.draw do

  resources :events, only: [:new, :create, :show, :index]

  root 'sessions#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/signup', to: 'users#new'
  delete '/logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create, :show, :index]

  resources :event_middles, only: [:create]
end
