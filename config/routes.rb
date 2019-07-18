Rails.application.routes.draw do
  
  get 'event_middles/attend'
  resources :events, only: [:new, :create, :show, :index]

  root 'sessions#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/signup', to: 'users#new'
  delete '/logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create, :show, :index]
end
