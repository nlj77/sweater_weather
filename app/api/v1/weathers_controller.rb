class Api::V1::WeathersController < ApplicationController 
    def index 
        data = WeatherFacade.forecast(params[:location])
        json_response(data)
    end

private 
    def json_response(object, status = :ok)
        render json: WeatherSerializer.new(object), status: status 
    end
end