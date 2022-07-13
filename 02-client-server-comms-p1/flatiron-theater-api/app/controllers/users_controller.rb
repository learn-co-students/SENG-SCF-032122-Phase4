class UsersController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  def create
    user = User.create!(user_params)
  #  puts "is this valid -------", user.valid?
   render json: user, status: :created

  end

  private

  def user_params
    params.permit(:name, :email)
  end

  def render_unprocessable_entity
    render json: { response: "whoops, there it is" }, status: :upgrade_required
  end
end
