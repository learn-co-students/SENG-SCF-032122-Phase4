class UsersController < ApplicationController
    def index 
        user = User.all
        render json: user
    end 

    def show
        user = find_user
        render json: user
    end 

    def create
        user = User.create!(production_params)
        render json: user, status: :created
    end 

    private

    def production_params
        params.permit(:name, :email)
    end 

    def find_user
        User.find(params[:id])
    end

   

end
