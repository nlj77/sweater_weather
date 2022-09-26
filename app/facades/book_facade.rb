class BookFacade
    attr_reader :num_found
    def self.get_books(location, limit)
        data = BookService.get_books(location, limit)
        books = data[:docs].map do |book|
            Book.new(data)
        end
    end
end