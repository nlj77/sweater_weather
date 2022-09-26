require 'rails_helper'

RSpec.describe BookFacade do
    it 'returns a book poro and the total number of books matching limit', :vcr do
        books = BookFacade.get_books('Denver, CO', 5)
        expect(books).to be_an(Array)
        expect(books[1]).to eq(679)

        expect(books[0][0].title).to eq("Denver west, CO and Bailey, CO: Denver, CO")
        expect(books[0][0].publisher).to eq(["USGS Branch of Distribution"])
        expect(books[0][0].isbn).to eq(["9780607620054", "0607620056"])
    end
    it 'returns a SAD PATH ' , :vcr do
        books = BookFacade.get_books('AFJSD:LKFJS:LJDFSDFKJS', 5)
        expect(books[0]). to eq([])
        expect(books[1]). to eq(0)
    end
end