require_relative '../decorator'
require_relative '../person'
require_relative '../nameable'
require_relative '../trimmer_decorator'
require_relative '../capitalize_decorator'

describe 'Decorator' do
  context '' do
    person = Person.new(15, name: 'diegooooooooooooooooo', parent_permission: true)
    nameable = Nameable.new
    trimmed_name = TrimmerDecorator.new(person)
    it 'Test should return true when checking the instance of Nameable' do
      expect(nameable).to be_instance_of(Nameable)
    end
    it 'Test nameable to throw raise NotImplementedError' do
      expect { nameable.correct_name }.to raise_error(NotImplementedError)
    end
    it 'Test should return trimmed name' do
      expect(trimmed_name.correct_name.length).to be <= 10
    end
    it 'Test should return capitalized name' do
      person = Person.new(15, name: 'erick', parent_permission: true)
      capitalized = CapitalizeDecorator.new(person)
      expect(capitalized.correct_name).to eql 'Erick'
    end
  end
end
