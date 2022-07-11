class ProductionsController < ApplicationController

  def index
    render json: Production.all
  end

  def show
    # byebug
    render json: Production.find(params[:id])
  end

  # get "/productions/:id" do
  # production = Production.find(params[:id])
  # production.to_json
  # end

end
