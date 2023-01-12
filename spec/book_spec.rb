require_relative '../book.rb'
describe 'Book' do
  context 'Creating a new book with correct values' do
    it 'Create a new instance of a Book with a title, author' do
      book = Book.new('asd', '1')
      p book
    end
  end
end