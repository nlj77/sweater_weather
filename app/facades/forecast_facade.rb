class ForecastFacade
    def self.forecast(location)
        Forecast.new(WeatherService.forecast(location))
    end
end