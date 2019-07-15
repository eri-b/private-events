Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get '/login', to: 'sessions#new'
  resources :users, only: [:new, :create, :show]
end
