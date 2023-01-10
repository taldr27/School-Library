require_relative '../data/write_data'
require_relative './data'
module CreateBook
  include WriteData
  def initialize
    @
  end
  def create_book
    @books = []
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    @books.push(book)
    creado = Data.new
    creado.collect_books(@books)
    puts 'Book succesfully created!'
  end
  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end