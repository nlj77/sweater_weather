require 'rails_helper'

RSpec.describe Geocode do
    it 'exists and has attributes', :vcr do
        service = GeocodeService.geocode('Denver,CO')
        denver = Geocode.new(service)
        expect(denver).to be_a(Geocode)
        expect(denver.lat).to eq(39.738453)
        expect(denver.long).to eq(-104.984853)
    end
end