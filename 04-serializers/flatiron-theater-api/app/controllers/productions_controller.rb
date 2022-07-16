class ProductionsController < ApplicationController
    

    def index 
        productions = Production.all
        render json: productions, status: :ok
    end 

    def show
        production = Production.find(params[:id])
        render json: production, include: :tickets, status: :ok
        # nested data below
        # render json: production, include: ['users', 'users.tickets'], status: :ok
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

    


end
