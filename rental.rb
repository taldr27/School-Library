class Rental
  attr_reader :person, :book
  attr_accessor :date, :book, :person
  def initialize(date, book, person)
    @date = date
    @person = person
    person.rental << self
    @book = book
    book.rental << self
  end
end