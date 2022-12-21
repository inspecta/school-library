class Rental
  attr_accessor :date, :person, :book 
  
  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book

    #rental belongs to person
    @person.add_rental(self)

    #rental belongs to book
    @book.add_rental(self)
  end

end