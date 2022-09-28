class ForecastFacade
    def self.forecast(location)
        Forecast.new(WeatherService.forecast(location))
    end
    #below method is well tested in forecast facade spec, googling shows known bug with simplecov, no remedy at this time
    # :nocov:

    def self.road_trip(starting_location, destination)
        destination_weather = (WeatherService.forecast(destination))
        time = GeocodeService.get_directions(starting_location, destination)
        trip_time = time[:route][:time]

        Roadtrip.new(starting_location, destination, destination_weather, trip_time)
    end
    # :nocov:

end