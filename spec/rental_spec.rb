require_relative '../rental'

describe 'Rental' do
  context 'Create a Rental with correct values' do
    book = Book.new('Book1', 'Author1')
    person = Person.new(15, name: 'Diego', parent_permission: true)
    rental = Rental.new('2017-09-07', book, person)
    it 'Test if a new Rental is instantiated from Rental' do
      expect(rental).to be_instance_of Rental
    end
    it 'Test if Data is added correctly' do
      expect(rental.id.is_a?(Integer)).to eql true
      expect(rental.book).to eql book
    end
  end
end
