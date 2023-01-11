require_relative './person'

class Student < Person
  attr_reader :classroom, :id

  def initialize(age, classroom, name: 'Unknown', parent_permission: true)
    super(age, name: name, parent_permission: parent_permission)
    @id = 1
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end

student1 = Student.new(12, 1, name: 'yo', parent_permission: false)
puts student1