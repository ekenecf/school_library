require_relative './person'

class Teacher < Person
  def initialize(specialization)
    @specialization = specialization
    super(age, name, parent_permission: parent_permission)
  end

  def can_use_services?
    true
  end
end
