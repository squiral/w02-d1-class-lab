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

end
