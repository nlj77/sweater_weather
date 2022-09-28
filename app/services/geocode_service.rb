class GeocodeService
    def self.geocode(city)
        response = conn.get('/geocoding/v1/address') do |faraday|
        faraday.params['location'] = city
        end
    parse_json(response)
    end
    def self.get_directions(starting_location, destination)
        response = conn.get("/directions/v2/route") do |faraday|
            faraday.params['from'] = starting_location
            faraday.params['to'] = destination
        end
        parse_json(response)
    end

    def self.conn
        Faraday.new(url: 'https://www.mapquestapi.com') do |faraday|
        faraday.params['key'] = ENV['map_key']
        end
    end

    def self.parse_json(response)
        JSON.parse(response.body, symbolize_names: true)
    end
    
end