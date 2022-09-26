class BookSerializer

    def self.book_search(books, forecast, location)
        { "data":
        {
            "id": 'null',
            "type": 'books',
            "attributes": {
            "destination": location,
            "forecast": {
                "summary": forecast.current_weather[:conditions],
                "temperature": forecast.current_weather[:temperature]
                }, 
            "total_books_found": books[1],
            "books": books[0].map do |book|
            {
                "title": book.title,
                "isbn": book.isbn,
                "publisher": book.publisher
            }
            end 
            }
        } 
        }

    end

end