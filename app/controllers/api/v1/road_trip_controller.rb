class Api::V1::RoadTripController < ApplicationController
    def create
        if User.exists?(password_digest: params[:api_key])
            data = ForecastFacade.road_trip(params[:starting_location], params[:destination])
            json_response(data)
        else 
            error_response('API key must be submitted as part of the request', 401)
        end 
    end

    private 
        def json_response(object, status = :ok)
            render json: RoadtripSerializer.new(object), status: status 
        end
end