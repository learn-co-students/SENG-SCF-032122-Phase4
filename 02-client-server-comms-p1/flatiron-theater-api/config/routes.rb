Rails.application.routes.draw do
  resources :users
  resources :tickets
  # resources :production_roles
  resources :productions, only: [:index, :show, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/productions', to: 'productions#index'
end
