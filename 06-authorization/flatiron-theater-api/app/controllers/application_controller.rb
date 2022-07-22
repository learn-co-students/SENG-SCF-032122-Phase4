class ApplicationController < ActionController::API
    include ActionController::Cookies
    
    before_action :authorized_user
    rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :handle_invalid

    def current_user
        User.find_by(id: session[:user_id])
    end

    def authorized_user
        return render json: { error: "Not Authorized" }, status: :unauthorized unless current_user
    end


    private

    def handle_invalid(invalid)
        render json: {errors: invalid.record.errors}, status: :unprocessable_entity
    end 

    def handle_not_found(error)
        render json: {error: "#{error.model} Not Found"}, status: :not_found
    end 
end
