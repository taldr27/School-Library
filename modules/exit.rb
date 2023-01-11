require 'json'
module ExitApp
  attr_accessor :books
  def exit_app
    json_file = File.open("./data/books.json")
    data_from_file = JSON.parse(File.read(json_file))
    data_from_file
    # asd = JSON.parse(@books)
    # p @books[0]["title"]
    # p @books[1]["title"]
    data = @books.each { |key| key }
File.write('./data/books.json', data.to_json)
  end
end