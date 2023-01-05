require_relative './book'
require_relative './person'
require_relative './student'
require_relative './teacher'

class App
  def show_books
    puts Book.all.length == 0 ? "No books added yet" : Book.all
  end

  def show_people
    puts Student.all.length && Teacher.all.length == 0 ? "There's no people added yet" : Student.all, Teacher.all
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    selection = gets.chomp.to_i
    print 'Age: '
    age = gets.chomp
    print 'Classroom: '
    classroom = gets.chomp
    print 'Name: '
    name = gets.chomp
    print 'Has parent permission? [Y/N]: '
    permission = gets.chomp
    if selection == 1
      Student.new(age, classroom, name: name, parent_permission: permission)
      puts "Student created!"
    elsif selection == 2
      Teacher.new(age, classroom, name: name, parent_permission: permission)
      puts "Teacher created!"
    else
      puts "Wrong selection!"
    end
  end

  def create_book

  end

  def create_rental

  end

  def list_rental_id

  end

end

