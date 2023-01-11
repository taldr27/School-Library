require_relative './cases'
require_relative './data/read_data'
class Main
  include ShowBooks
  def start
    hash = {
      "1" => File.exists?("./data/books.json"),
      "2" => File.exists?("./data/people.json"),
      "3" => File.exists?("./data/rentals.json")
    }
    hash.each do |key, value|
      if !hash[key]
        case key
        when "1"
          asd = FileUtils.touch("./data/books.json")
          json_file = File.open("./data/books.json")
          File.write(json_file, "[]")
        when "2"
          asd = FileUtils.touch("./data/people.json")
          json_file = File.open("./data/people.json")
          File.write(json_file, "[]")
        when "3"
          asd = FileUtils.touch("./data/rentals.json")
          json_file = File.open("./data/rentals.json")
          File.write(json_file, "[]")
        end
      else
        read_books
      end
    end
    
    app = Cases.new
    app.run
  end

end

Main.new.start
