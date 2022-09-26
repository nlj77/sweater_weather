class Book
    attr_reader :title, :publisher, :isbn

    def initialize(data)
        @title = data[:docs][0][:title]
        @publisher = data[:docs][0][:publisher]
        @isbn =data[:docs][0][:isbn]
    end
end