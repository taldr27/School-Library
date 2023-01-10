require_relative './cases'
require_relative './data/read_data'
class Main
  include ShowBooks
  def start
    if File.exists?("./data/books.json")
      read_books
    else
      asd = FileUtils.touch("./data/books.json")
      json_file = File.open("./data/books.json")
      File.write(json_file, "[]")
    end
    app = Cases.new
    app.run
  end

end

Main.new.start

# if File.exists?("./data/books.json")
#   json_file = File.open("./data/books.json")
#   data_from_file = File.read(json_file)
#   result = JSON.parse(data_from_file)
# else
#   asd = FileUtils.touch("./data/books.json")
#   json_file = File.open("./data/books.json")
#   File.write(json_file, "[]")
#   data_from_file = File.read(json_file)
#   result = JSON.parse(data_from_file)
# end