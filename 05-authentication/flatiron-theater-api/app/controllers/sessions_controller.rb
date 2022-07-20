class SessionsController < ApplicationController
  def create
    # byebug
    user = User.find_by(name: params[:username])
    if user&.authenticate(params[:password])
      render json: user, status: :ok
    else render json: {error: "invalid password or username, please try again"}, status: :unprocessable_entity
    end
  end
end
