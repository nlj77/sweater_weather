class BookService
    def self.get_books(location, limit)
        response = conn.get('search.json') do |route|
        route.params['place'] = location
        route.params['limit'] = limit
        end
    parse_json(response)
    end

    def self.conn
        Faraday.new(url: 'http://openlibrary.org/')
    end

    def self.parse_json(response)
        JSON.parse(response.body, symbolize_names: true)
    end
end