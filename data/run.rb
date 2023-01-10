require 'json'
json_file = File.open("./data/books.json")
data_from_file = JSON.load(json_file)
 
puts data_from_file["widget"]["debug"]






# puts data_from_file["widget"]["window"]
# puts data_from_file["widget"]["image"]
# puts data_from_file["widget"]["text"]