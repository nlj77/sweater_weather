require 'rails_helper'

RSpec.describe BookFacade do
    it 'returns a book poro and the total number of books matching limit', :vcr do
        books = BookFacade.get_books('Denver, CO', 5)
        expect(books).to be_all Book
        expect(number_found).to eq(679)
        expect((books)[0].title).to eq("Denver west, CO and Bailey, CO: Denver, CO")
        expect((books)[0].publisher).to eq(["USGS Branch of Distribution"])
        expect((books)[0].isbn).to eq(["9780607620054", "0607620056"])
    end
    it 'returns a SAD PATH ' , :vcr do
        books = BookFacade.get_books(nil, 5)
        expect(books.empty?). to eq(true)
    end
end