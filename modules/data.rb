class Data
  attr_accessor :books

  def initialize
    @books = []
  end

  def add_book(book)
    @books.push(book)
  end
end

class Classroom
  attr_accessor :label

  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students.push(student)
    student.classroom = self
  end
end