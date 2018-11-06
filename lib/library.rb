class Library
  attr_reader :books
  def initialize
    @books = []
  end

  def add_to_collection(book_instance)
    @books << book_instance
  end

  def include?(title)
    @books.flatten.any? do |book|
      book.title == title
    end
  end
end
