require_relative '../data/read_data'
module ListBooks
  include ShowBooks
  def show_books
    @books = read_books
    if @books.empty?
      puts 'There\'s no books added yet!'
    else
      @books.each { |i| puts %(Title: "#{i["title"]}" Author: #{i["author"]})}
    end
  end
end
