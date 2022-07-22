class SessionsController < ApplicationController
    skip_before_action :authorized_user, only: :login

    def login
        user = User.find_by(name:params[:username])
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user, status: :ok 
        else 
            render json: {error: "Invalid Password or Username"}, status: :unprocessable_entity
        end 
    end 

     def destroy
        session.delete :user_id
    # we could set session[:user_id] = nil but then the key would still be in session which could cause bug depending on how we are using this information
    end 

end
