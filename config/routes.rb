Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tweets#index'
  match '/', to: 'tweets#create', via: [:post]
  resources :tweets, only: [:index, :destroy, :edit, :update, :new, :create]
  get '/auth/:provider/callback', to: 'sessions#create'
end
