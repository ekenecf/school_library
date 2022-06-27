require_relative './person'

class Student < Person
  def initialize(id, age, classroom, name = 'unknown', parent_permission: true)
    @classroom = classroom
    super
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
