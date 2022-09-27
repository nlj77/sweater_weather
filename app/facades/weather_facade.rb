class WeatherFacade
    def self.forecast(location)
        Weather.new(WeatherService.forecast(location))
    end
end