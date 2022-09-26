class Api::V1::ForecastController < ApplicationController 
    def index 
        location = GeocodeFacade.geocode(forecast_params)
        weather = WeatherFacade.forecast(location)
        render json: ForecastSerialzer.new(weather)
    end

private 
    def forecast_params 
        params.permit(:location)
    end
end