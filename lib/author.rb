class Author
  attr_reader :books
  def initialize(author_details)
    @first_name = author_details[:first_name]
    @last_name = author_details[:last_name]
    @books = []
  end

  def add_book(title, publication_date)
    @books << Book.new({first_name: @first_name, last_name: @last_name, title: title, publication_date: publication_date})
  end
end
