class BooksForecastFacade

    def self.get_book_destination_forecast(city)
        location = GeocodeFacade.geocode(city)
        forecast = WeatherFacade.forecast(city)
    end 

end 