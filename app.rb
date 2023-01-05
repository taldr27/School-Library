require_relative './book'
require_relative './person'
require_relative './student'
require_relative './teacher'

class App
  def show_books
    Book.all.length == 0 ?  (puts "There\s no books added yet!")  : 
    (Book.all.each {
      |book|
      puts %{Title: "#{book.title}", Author: #{book.author}}
    })
  end

  def show_people
    Student.all.length == 0 && Teacher.all.length == 0 ? (puts "There\'s no people added yet") : 
    (Student.all.each {
      |student|
      puts %{[Student] Name: #{student.name}, ID: #{student.id}, Age: #{student.age}}
    }
    Teacher.all.each {
      |teacher|
      puts %{[Teacher] Name: #{teacher.name}, ID: #{teacher.id}, Age: #{teacher.age}}
    }
    )
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

  end

  def list_rental_id

  end

end

