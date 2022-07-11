Rails.application.routes.draw do
  resources :production_roles
  resources :productions, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get “/pizza”, to: "pizza#index”
end



# in Sinatra get "/productions" do
# some code goes here
# Production.all.to_json
# end
