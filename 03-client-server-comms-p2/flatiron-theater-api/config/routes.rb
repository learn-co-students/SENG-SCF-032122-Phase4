Rails.application.routes.draw do
  # Not using routes right now, comment back in as we create new routes
  # resources :users
  # resources :tickets
  # resources :production_roles
  resources :productions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # if we need to write a custom route here is a template
  # get '/productions', to: 'productions#index'
end
