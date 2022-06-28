require_relative './person'

class Student < Person
  def initialize(classroom)
    @classroom = classroom
    super(age, name, parent_permission: parent_permission)
  end
  attr_accessor :classroom, :parent_permission

  def play_hooky
    "¯\(ツ)/¯"
  end
end
