class BookFacade
    def self.get_books(location, limit)
        data = BookService.get_books(location, limit)
        num_found = data[:numFound]
        books = data[:docs].map do |book|
            Book.new(data)
        end
    end
end