require_relative '../data/read_data'
module ListBooks
  include ShowBooks
  def show_books
    @books = read_books
    if @books.length < 1
      puts 'There\'s no books added yet!'
    else
      Book.all.each do |book|
        puts %(Title: "#{book.title}", Author: #{book.author})
      end
      @books.each { |i| puts %(Title: "#{i["title"]}" Author: #{i["author"]})}
    end
  end
end
