require_relative '../data/read_data'
module ListBooks
  include ShowBooks
  def show_books
    if @books.empty?
      puts 'There\'s no books added yet!'
    elsif @books.length > 1
      @books.each { |i| puts %(Title: "#{i['title']}" Author: #{i['author']}) }
    end
  end
end
