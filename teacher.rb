require_relative './person'

class Teacher < Person
  def initialize(specialization)
    super(10, name, parent_permission: true)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
