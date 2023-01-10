require_relative '../data/run'

module ListBooks
  include ShowBooks
  def show_books
    if Book.all.empty?
      puts 'There\'s no books added yet!'
      puts shows.length
    else
      Book.all.each do |book|
        puts %(Title: "#{book.title}", Author: #{book.author})
      end
    end
  end
end
