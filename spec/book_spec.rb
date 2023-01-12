require_relative '../book'
require_relative '../rental'
require_relative '../person'
describe 'Book' do
  context 'Creating a new book with correct values' do
    book = Book.new('Book1', 'Author1')
    person = Person.new(15, name: 'Diego', parent_permission: true)
    it 'Create a new instance of a Book with a title, author' do
      expect(book.title).to eql('Book1')
      expect(book.author).to eql('Author1')
    end
    it 'Create rental for book' do
      rental = Rental.new('12/12/2012', book, person)
      book.add_rental(rental)
      rentals_length = book.rentals.length
      expect(rentals_length).to eql(1)
    end
    it 'Check if is instance of Book' do
      expect(book).to be_instance_of(Book)
    end
  end
end
