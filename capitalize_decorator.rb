require_relative './decorator'

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.name.capitalize
  end
end
