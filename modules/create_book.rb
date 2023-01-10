require_relative '../data/write_data'
module CreateBook
  include WriteData
  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    Book.new(title, author)
    write_books(title, author)
    puts 'Book succesfully created!'
  end
end
