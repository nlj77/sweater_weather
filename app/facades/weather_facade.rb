class WeatherFacade
    def self.forecast(location)
        geocode = GeocodeFacade.geocode(location)
        weather = WeatherService.forecast(geocode)
        Weather.new(weather)
    end
end