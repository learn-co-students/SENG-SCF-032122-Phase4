Rails.application.routes.draw do
  resources :tickets, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:create]
  resources :production_roles
  resources :productions, only: [:index, :show, :create, :update, :destroy]

  post '/login', to: 'sessions#login'

=begin
TODO: '/authorized_user' route if we are looking for a user, which controller should our action be in?
=end
get "/authorized_user", to: "users#show"

# TODO: delete route '/logout'
delete '/logout', to: "sessions#destroy"
end
