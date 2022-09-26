require 'rails_helper'

RSpec.describe BooksForecastFacade do
    it 'returns a Forecast poro', :vcr do
    forecast = BooksForecastFacade.get_book_destination_forecast('Denver, CO')
    expect(forecast).to be_a Weather
    end
end 