require_relative './app'
class Interface
  def interface
    puts 'Select an option: '
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals'
    puts '7 - Exit'
  end
end

class Main
  def initialize
    @app = App.new()
    @interface = Interface.new()
  end

  def selection
    puts @interface.interface
    input = gets.chomp
  end

  def run
    puts @interface.interface
    input = gets.chomp
    cases(input)
  end

  def cases(input)
    case input
    when '1'
      @app.show_books
      run
    when '2' then @app.show_people
    when '3' 
      @app.create_person
      run
    when '4' then @app.create_book
    when '5' then @app.create_rental
    when '6' then @app.list_rental_id
    when '7' then "Thanks"
    else 
      puts 'Option doesn\'t exist'
    end
  end

end

obj = Main.new
obj.run