require 'rails_helper'

RSpec.describe WeatherFacade do
    it 'creates Forecast object', :vcr do
        location = GeocodeFacade.geocode('denver,co')
        forecast = WeatherFacade.forecast(location)
        expect(forecast).to be_a(Weather)
    end
end