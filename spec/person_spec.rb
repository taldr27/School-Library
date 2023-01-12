require_relative '../person'

describe 'Person' do
  context 'Create a person with correct values' do
    person = Person.new(15, name: 'Diego', parent_permission: true)
    book = Book.new('Book1', 'Author1')

    it 'Check if is instantiated from person' do
      expect(person).to be_instance_of(Person)
    end

    it 'Return false because we are sending 15 in age to the person' do
      private_method = person.send(:of_age?)
      expect(private_method).to eql false
    end
    it 'Return true because parent permission is equals true' do
      expect(person.can_use_services?).to eql true
    end
    it 'Return correct name' do
      expect(person.correct_name).to eql 'Diego'
    end
    it 'Create rental for person' do
      rental = Rental.new('12/12/2012', book, person)
      person.add_rental(rental)
      rentals_length = person.rentals.length
      expect(rentals_length).to eql(1)
    end
  end
end
