class Api::V1::SessionsController < ApplicationController
    def create
        user = User.find_by(email: params[:email])
    
        if user.nil?
            render(json: { message: "User does not exist. Please register!" }, status: :unauthorized)
        elsif user.authenticate(params[:password])
            render(json: UserSerializer.new(user), status: :ok)
        else
            render(json: { message: "User email or password is invalid." }, status: :unauthorized)
        end
    end
end