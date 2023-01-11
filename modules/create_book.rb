module CreateBook
  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    @books.push({"title"=> book.title, "author"=> book.author})
    puts 'Book succesfully created!'
  end
  # def write_books
  #   puts @books
    # json_file = File.open("./data/books.json")
    # data_from_file = JSON.parse(File.read(json_file))
    # @books = [{ title: title, author: author }, { title: title, author: author }, { title: title, author: author }]
    # new_book = { title: title, author: author }
#     data = JSON.pretty_generate(@books.map do |e|
#       {
#         title: e['title'],
#         author: e['author']
#       }
#     end)
# File.write('./data/books.json', data)
  # end

end