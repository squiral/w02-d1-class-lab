require('minitest/autorun')
require('minitest/rg')
require_relative('../library_class')

class TestLibrary < MiniTest::Test
  
  def test_book_info
    library = Library.new()
    book = library.book_info("Alice in Wonderland")
    assert_equal({
     title: "Alice in Wonderland",
     rental_details: {
       student_name: "Jessica",
       date: "01/12/17"
     }}, book)
  end

end
