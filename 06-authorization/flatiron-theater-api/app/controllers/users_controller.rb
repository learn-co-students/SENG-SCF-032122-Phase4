class UsersController < ApplicationController
    

    def create 
        user = User.create!(user_params)
        # session[:current_user] = user.id
        # cookies[:pizza] = "no cheese"
        render json: user, status: :created
    end 

    
   

    private

    def user_params
        params.permit(:name, :email, :password)
    end 
end
