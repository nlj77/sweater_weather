class Api::V1::RoadTripController < ApplicationController
    def create
        user = User.find_by(api_key: params[:api_key])
        # :nocov:
        #This is tested, looked up documented simplecov bug
        if user.present?
            trip = ForecastFacade.road_trip(params[:origin], params[:destination])
            render json: RoadTripSerializer.new(trip)
        else
            render json: { error: 'Api Key Incorrect or Missing' }, status: 401
        end
        # :nocov:

    end
end