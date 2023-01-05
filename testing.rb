require_relative './person'
require_relative './student'
require_relative './classroom'
require_relative './capitalize_decorator'
require_relative './trimmer_decorator'
require_relative './book'
require_relative './rental'

student1 = Student.new(1, 1, name: 'Yo')
# puts student1
classroom1 = Classroom.new('ClassRoom1')
# puts classroom1
# puts classroom1.students
classroom1.add_student(student1)
# puts classroom1.students
# classroom -> owner || student -> animals

student2 = Student.new(5, 5, name: 'Tu')
puts student2.classroom

# person -> animal || book -> vet || rental -> visit

book1 = Book.new('Title1', 'Author1')
book2 = Book.new('Title1', 'Author1')
book3 = Book.new('Title1', 'Author1')
person1 = Person.new(15, name: 'Diego')
# puts person1

rental1 = Rental.new('2017-09-07', book1, person1)
puts rental1.person.name
puts Book.all