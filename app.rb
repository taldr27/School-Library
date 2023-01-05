require_relative './book'
require_relative './person'
require_relative './student'
require_relative './teacher'
require_relative './rental'

class App
  def show_books
    if Book.all.empty?
      puts 'There\'s no books added yet!'
    else
      Book.all.each do |book|
        puts %(Title: "#{book.title}", Author: #{book.author})
      end
    end
  end

  def show_people
    if Student.all.empty? && Teacher.all.empty?
      puts 'There\'s no people added yet'
    else
      Student.all.each do |student|
        puts %([Student] Name: #{student.name}, ID: #{student.id}, Age: #{student.age})
      end
      Teacher.all.each do |teacher|
        puts %([Teacher] Name: #{teacher.name}, ID: #{teacher.id}, Age: #{teacher.age})
      end
    end
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    selection = gets.chomp.to_i
    if selection == 1 || selection == 2
      print 'Age: '
      age = gets.chomp
      print 'Name: '
      name = gets.chomp
      if selection == 1
        print 'Classroom: '
        classroom = gets.chomp
        print 'Has parent permission? [Y/N]: '
        permission = gets.chomp
        Student.new(age, classroom, name: name, parent_permission: permission)
        puts "Student created!"
      elsif selection == 2
        print 'Specialization: '
        specialization = gets.chomp
        Teacher.new(age, specialization, name: name)
        puts "Teacher created!"
      end
    else
      puts "Wrong selection!"
    end
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    Book.new(title, author)
    puts 'Book succesfully created!'
  end

  def create_rental
    if Book.all.empty? || Person.all.empty?
      puts "There\s no persons or books added yet!"
    else
      puts 'Select a book from the following list by number'
      Book.all.each_with_index {
        |book, index|
        puts %(#{index}\) Title: "#{book.title}", Author: #{book.author})
      }
      selected_book = gets.chomp.to_i
      puts 'Select a person from the following list by number (not id)'
      Student.all.each_with_index {
        |student, index|
        puts %(#{index}\) [Student] Name: #{student.name}, ID: #{student.id}, Age: #{student.age})
      }
      Teacher.all.each_with_index {
        |teacher, index|
        puts %(#{index}\) [Teacher] Name: #{teacher.name}, ID: #{teacher.id}, Age: #{teacher.age})
      }
      selected_person = gets.chomp.to_i
      puts 'Date: '
      date = gets.chomp
      Rental.new(date, Book.all[selected_book], Person.all[selected_person])
      puts 'Rental created succesfully'
    end
  end

  def list_rental_id
    print 'ID of person: '
    id_selected = gets.chomp.to_i
    Rental.all.each {
      |rental|
      rental.person.id == id_selected ? 
        (puts %'#{rental.date}, Book "#{rental.book.title}" by #{rental.book.author}, rented by #{rental.person.name}') :
        (puts 'There\'s no rental with that ID')
    }
  end
end
