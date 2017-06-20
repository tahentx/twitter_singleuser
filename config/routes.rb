Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tweets#index'
  match '/', to: 'tweets#create', via: [:post]
  resources :tweets, only: [:index, :destroy, :edit, :update, :new, :create]
  # get 'https://api.twitter.com/oauth2/token', to: 'user#create', as: 'sign_in'
  # get '/auth/twitter/callback', to: 'sessions#create'
  # get '/auth/twitter', to: 
  get '/login', to: 'sessions#new', as: 'login'

end
