require_relative './book'

class App
  def show_books
    book1 = Book.new('Title1', 'Author1')
    puts Book.all
  end

  def show_people

  end

  def create_person

  end

  def create_book

  end

  def create_rental

  end

  def list_rental_id

  end

end

def main
  app = App.new()
  puts "Select an option: "
  input = gets.chomp

  case input
  when "show" then app.show_books
  end
end

main()
