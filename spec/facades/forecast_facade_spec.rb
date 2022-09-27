require 'rails_helper'

RSpec.describe ForecastFacade do
    it 'creates Forecast object', :vcr do
        location = GeocodeFacade.geocode('denver,co')
        forecast = ForecastFacade.forecast(location)
        expect(forecast).to be_a(Forecast)
    end
end