class WeatherService
    def self.forecast(geocode)
        response = conn.get('onecall') do |faraday|
            faraday.params['lat'] = geocode.lat
            faraday.params['lon'] = geocode.long
            faraday.params['exclude'] = 'minutely'
            faraday.params['units'] = 'imperial'
        end
        parse_json(response)
    end

    def self.conn
        Faraday.new(url: 'http://api.openweathermap.org/data/2.5') do |faraday|
        faraday.params['appid'] = ENV['weather_key']
        end
    end
    
    def self.parse_json(response)
        JSON.parse(response.body, symbolize_names: true)
    end
end