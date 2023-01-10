require 'json'
require_relative '../book'
module WriteData
  def write_books(title, author)
    json_file = File.open("./data/books.json")
    data_from_file = JSON.parse(File.read(json_file))
    new_book = { title: title, author: author }
    added_book = data_from_file.push(new_book).to_json
    File.write(json_file, added_book)
  end
end