class Library

  attr_accessor :books

  def initialize()
    @books = [
     {
      title: "Lord of the Rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
     },

     {
      title: "Alice in Wonderland",
      rental_details: {
        student_name: "Jessica",
        date: "01/12/17"
      }
    },
    {
      title: "Lonely Planet: Korea",
      rental_details: {
        student_name: "Molly",
        date: "25/02/18"
      }
    }
  ]
end

  def book_info(title)
    for book in @books
      return book if book[:title] == title
    end
  end

  def book_rental_info(title)
    for book in @books
      return book[:rental_details] if book[:title] == title
    end
  end

  def add_new_book(new_book)
    @books << {title: new_book,
      rental_details: {
        student_name: "",
        date: ""
      }}
  end

  def add_rental_details(new_book, new_student_name, new_date)
    for book in @books
      if book[:title] == new_book
        book[:rental_details][:student_name] = new_student_name
        book[:rental_details][:date] = new_date
      end
    end

    return book_rental_info(new_book)

  end

end
