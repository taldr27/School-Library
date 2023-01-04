require_relative './person'
require_relative './student'
require_relative './classroom'
require_relative './capitalize_decorator'
require_relative './trimmer_decorator'

student1 = Student.new(1, 1, name= 'Yo')
puts student1
classroom1 =  Classroom.new("ClassRoom1")
puts classroom1
puts classroom1.students
classroom1.add_student(student1)
puts classroom1.students
# classroom -> owner || student -> animals

student2 = Student.new(5, 5, name= 'Tu')
puts student2.classroom