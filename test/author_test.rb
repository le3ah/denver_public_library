require './test/test_helper'
require './lib/author'
require './lib/book'

class AuthorTest < Minitest::Test
  def test_it_exists
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    assert_instance_of Author, charlotte_bronte
  end

  def test_it_starts_with_no_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    assert_equal [], charlotte_bronte.books
  end

  def test_it_can_add_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    charlotte_bronte.books
    assert_instance_of Book, charlotte_bronte.books.first
    charlotte_bronte.add_book("Villette", "1853")
    charlotte_bronte.books
    assert_instance_of Book, charlotte_bronte.books.last
    assert_equal 2, charlotte_bronte.books.count
  end
end
