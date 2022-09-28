require 'rails_helper' 

RSpec.describe Roadtrip do 
    it 'exists and has origin, destination, travel time, temperature, and weather conditions', :vcr do 
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
        expect(roadtrip.weather_data[:current][:temp]).to eq 83.14
    end
end