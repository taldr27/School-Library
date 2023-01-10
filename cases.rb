require_relative './app'
require_relative './interface'
require_relative './modules/create_book'
class Cases
  include CreateBook
  def initialize
    @app = App.new
    @interface = Interface.new
  end

  def run
    puts @interface.interface
    input = gets.chomp.to_i
    option(input)
  end

  def option(input)
    selections = {
      1 => 'show_books',
      2 => 'show_person',
      3 => 'create_person',
      4 => 'create_book',
      5 => 'create_rental',
      6 => 'list_rental_id'
    }
    case input
    when 1..6
      @app.send(selections[input])
      run
    when 7
      write_book(@books)
      # write_books
      # write_books
    else
      puts 'Option doesn\'t exist ¯\_(ﾟ～ﾟ)_/¯, select another one!'
      run
    end
  end
end
