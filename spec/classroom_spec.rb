require_relative '../classroom'
require_relative '../student'
describe 'Classroom' do
  context 'Test when passing correct values to Classroom' do
    classroom = Classroom.new('Classroom1')
    student = Student.new(14, 1, name: 'Erick', parent_permission: true)
    it 'Test if is instantiated from Classroom' do
      expect(classroom).to be_instance_of Classroom
    end
    it 'Return the classroom label when called' do
      expect(classroom.label).to eql 'Classroom1'
    end
    it 'Should add student to the student array' do
      classroom.add_student(student)
      students_length = classroom.students.length
      expect(students_length).to eql(1)
    end
  end
end
