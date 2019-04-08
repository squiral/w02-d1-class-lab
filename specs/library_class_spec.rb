require('minitest/autorun')
require('minitest/rg')
require_relative('../library_class')

class TestLibrary < MiniTest::Test
  def setup
    @lord_of_the_rings = {
      title: "Lord of the Rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
    }

    @alice_in_wonderland = {
      title: "Alice in Wonderland",
      rental_details: {
        student_name: "Jessica",
        date: "01/12/17"
      }
    }

    @lonely_planet = {
      title: "Lonely Planet: Korea",
      rental_details: {
        student_name: "Molly",
        date: "25/02/18"
      }
    }
  end


  def test_books
    books = [@lonely_planet, @alice_in_wonderland, @lord_of_the_rings]
    library = Library.new(books)
    assert_equal([@lonely_planet, @alice_in_wonderland, @lord_of_the_rings], library.books)
  end

  def test_get_book_information
    books = [@lonely_planet, @alice_in_wonderland, @lord_of_the_rings]
    library = Library.new(books)
    result = library.get_book_information(@lonely_planet)
    assert_equal("Title: Lonely Planet: Korea, Student Name: Molly, Date: 25/02/18", result)
  end






















end
