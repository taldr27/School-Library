require_relative './person'

class Student < Person
  def initialize(classroom)
    super(10, name, parent_permission: true)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
