class GeocodeFacade
    def self.geocode(location)
        service = GeocodeService.geocode(location)
        Geocode.new(service)
    end
end