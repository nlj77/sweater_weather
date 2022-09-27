require 'rails_helper'

RSpec.describe GeocodeService do

    it 'returns location JSON data for a given city', :vcr do
        coords = GeocodeFacade.geocode('denver,co')

        expect(coords).to be_a Geocode
        expect(coords.lat).to eq(39.738453)
        expect(coords.long).to eq(-104.984853)
    end
end