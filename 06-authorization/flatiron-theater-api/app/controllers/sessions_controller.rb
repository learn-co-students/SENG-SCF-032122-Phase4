class SessionsController < ApplicationController

   def login
        user = User.find_by(name:params[:username])
        if user&.authenticate(params[:password])
            
            # cookies[:flavor] = "chocolate"
            # byebug
            render json: user, status: :ok 
        else 
            render json: {error: "Invalid Password or Username"}, status: :unprocessable_entity
        end 
    end 

    # def destroy
        
    # we could set session[:current_user] = nil but then the key would still be in session which could cause bug depending on how we are using this information
    # end 

end
