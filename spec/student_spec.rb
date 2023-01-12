require_relative '../student'
describe 'Student' do
  context 'Test when passing correct values to student' do
    student = Student.new(14, 1, name: 'Erick', parent_permission: true)
    it 'Test if is instantiated from student' do
      expect(student).to be_instance_of(Student)
    end
    it 'Test if classroom returns the correct assigned classroom' do
      expect(student.classroom).to eq 1
    end
    it 'Test if returns the ¯\(ツ)/¯ correctly' do
      expect(student.play_hooky).to eql '¯\(ツ)/¯'
    end
  end
end
