require 'json'
module ShowBooks
  def shows
    json_file = File.open("./data/books.json")
    # data_from_file = JSON.pretty_generate(json_file)
    data_from_file = File.read(json_file)
    puts data_from_file
    JSON.parse(data_from_file)
  end
end


# puts data_from_file["widget"]["window"]
# puts data_from_file["widget"]["image"]
# puts data_from_file["widget"]["text"]