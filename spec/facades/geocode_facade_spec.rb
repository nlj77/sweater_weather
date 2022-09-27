require 'rails_helper'

RSpec.describe GeocodeFacade do
    it 'creates a geocode', :vcr do
        location = GeocodeFacade.geocode('denver,co')
        expect(location).to be_a(Geocode)
    end

    it 'creates latitude and longitude using given city', :vcr do
        location = GeocodeFacade.geocode('denver,co')
        expect(location.lat).to be_a(Float)
        expect(location.long).to be_a(Float)
    end
end