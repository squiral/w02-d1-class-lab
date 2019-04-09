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

  def test_book_rental_info
    library = Library.new()
    rental_info = library.book_rental_info("Lord of the Rings")
    assert_equal({
      student_name: "Jeff",
      date: "01/12/16"
    }, rental_info)
  end

  def test_add_book_title
    library = Library.new()
    new_book = library.add_new_book("To Kill a Mockingbird")
    result = library.book_info("To Kill a Mockingbird")
    assert_equal({title: "To Kill a Mockingbird",
      rental_details: {
        student_name: "",
        date: ""
      }}, result)
  end

  def test_add_rental_details
    library = Library.new()
    result = library.add_rental_details("To Kill a Mockingbird", "Sarah", "12/11/19")
    assert_equal({
      student_name: "Sarah",
      date: "12/11/19"
    }, result)
  end
end
