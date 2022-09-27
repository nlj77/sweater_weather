class Api::V1::UsersController < ApplicationController

    class Api::V1::UsersController < ApplicationController
        def create
            if User.exists?(email: params[:email])
                render json: { message: "email already taken" }, status: 400
            elsif params[:password] != params[:password_confirmation]
                render json: { message: "passwords must match" }, status: 400
            elsif params[:email] == "" || params[:password] == "" || params[:password_confirmation] == ""
                render json: { message: "all fields must be completed" }, status: 400
            elsif
                user = User.create!(email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation], api_key: SecureRandom.hex(10))
                render json: UsersSerializer.return(user), status: 201
            end
        end
end