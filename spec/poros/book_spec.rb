require 'rails_helper'

RSpec.describe Book do
    it "exists and has attributes", :vcr do

        books = BookFacade.get_books('Denver, CO', 1)
        book = books[0].first

        expect(book).to be_a Book
        expect(book.title).to eq("Denver west, CO and Bailey, CO: Denver, CO")
        expect(book.publisher).to eq(["USGS Branch of Distribution"])
        expect(book.isbn).to eq(["9780607620054", "0607620056"])
    end

end