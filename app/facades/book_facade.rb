class BookFacade
    attr_reader :num_found
    def self.get_books(location, limit)
        data = BookService.get_books(location, limit)
        num_found = data[:numFound]
        books = data[:docs].map do |book|
            Book.new(data)
        end
        return_set = [books, num_found]
    end
end