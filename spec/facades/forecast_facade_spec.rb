require 'rails_helper'

RSpec.describe ForecastFacade do
    it 'creates Forecast object', :vcr do
        location = GeocodeFacade.geocode('denver,co')
        forecast = ForecastFacade.forecast(location)
        expect(forecast).to be_a(Forecast)
    end
    it 'creates a road trip object', :vcr do
        starting_location = 'Denver, CO'
        destination = 'Los Angeles, CA'
        coords = GeocodeFacade.geocode('Los Angeles, CA')
        lat = coords.lat
        long = coords.long
        weather_data = WeatherService.forecast(coords)
        time = GeocodeService.get_directions(starting_location, destination)
        trip_time = time[:route][:time]

        roadtrip = Roadtrip.new(starting_location, destination, weather_data, trip_time)

        expect(roadtrip).to be_a Roadtrip
        expect(roadtrip.id).to eq nil 
        expect(roadtrip.starting_location).to eq starting_location 
        expect(roadtrip.destination).to eq destination
        expect(roadtrip.trip_time_hours).to eq '14 hours'
        expect(roadtrip.weather_data).to be_a Hash
        expect(roadtrip.weather_data[:current][:temp]).to eq 81.73
    end
end