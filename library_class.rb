class Library

  lord_of_the_rings = {
    title: "Lord of the Rings",
    rental_details: {
      student_name: "Jeff",
      date: "01/12/16"
    }
  }

  alice_in_wonderland = {
    title: "Alice in Wonderland",
    rental_details: {
      student_name: "Jessica",
      date: "01/12/17"
    }
  }

  lonely_planet = {
    title: "Lonely Planet: Korea",
    rental_details: {
      student_name: "Molly",
      date: "25/02/18"
    }
  }

  def initialize(books)
    @books = books
  end


  def books
    return @books
  end

  def get_book_information(book)
    return "Title: #{book[:title]}, Student Name: #{book[:rental_details][:student_name]}, Date: #{book[:rental_details][:date]}"
  end

















end
