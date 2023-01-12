require_relative '../teacher'
describe 'Teacher' do
  context 'Test when passing correct values to teacher' do
    teacher = Teacher.new(35, 'Time Travel', name: 'Teacher1')
    it 'Test if is instantiated from teacher' do
      expect(teacher).to be_instance_of(Teacher)
    end
    it 'Test if teacher can use services' do
      expect(teacher.can_use_services?).to eql true
    end
  end
end
