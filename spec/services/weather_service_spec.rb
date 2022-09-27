require 'rails_helper'

RSpec.describe WeatherService do

    
    it 'returns forecast JSON data for a given latitude & longitude', :vcr do
        coords = GeocodeFacade.geocode('denver,co')
        lat = coords.lat
        long = coords.long
        forecast = WeatherService.forecast(coords)

        expect(forecast).to be_a Hash
        expect(forecast).to have_key(:current)
        expect(forecast).to have_key(:hourly)
        expect(forecast).to have_key(:daily)
    end
end