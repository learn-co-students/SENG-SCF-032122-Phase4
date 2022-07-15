class ProductionsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :handle_unprocessable_entity

    def index 
        productions = Production.all
        render json: productions, status: :ok
    end 

    def show
        production = Production.find(params[:id])
        render json: production
    end 

    def create
        # commenting out ! on create to see what is returned in Postman
        production = Production.create(production_params)
        render json: production, status: :created
    end 

    def update
        production = Production.find(params[:id])
        production.update!(production_params)
        render json: production, status: :accepted
    end 

    def destroy
        production = Production.find(params[:id])
        production.destroy
        head :no_content 
    end 


    private 

    def production_params
        params.permit(:title, :genre, :description, :budget, :image, :director, :ongoing, :id)
    end 

    def handle_unprocessable_entity(invalid)
        render json: {errors: invalid.record.errors}, status: :unprocessable_entity 
    end


end
