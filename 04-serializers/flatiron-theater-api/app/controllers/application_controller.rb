class ApplicationController < ActionController::API

  rescue_from ActiveRecord::RecordInvalid, with: :handle_unprocessable_entity
  rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found

  private

  def handle_unprocessable_entity(invalid)
    render json: {errors: invalid.record.errors}, status: :unprocessable_entity 
  end

  def handle_not_found(not_found)
    render json: { boooo_hiss:  "#{not_found.model} not found" }, status: :not_found
  end
    
end
