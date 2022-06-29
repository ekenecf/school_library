require_relative './person'

class Student < Person
  def initialize(age, classroom, name = 'unknown', parent_permission: true)
    @classroom = classroom
    super(age, name, parent_permission: parent_permission)
  end
  attr_accessor :classroom, :parent_permission

  def play_hooky
    "¯\(ツ)/¯"
  end
end

# class Animal
#     def initialize(type, number_of_legs, name = "Unknown")
#       @id = Random.rand(1..1000)
#       @name = name
#       @number_of_legs = number_of_legs
#       @type = type
#     end

#     attr_accessor :type, :number_of_legs, :name

#     def remove_leg
#         remover = Remover.new()
#         remover.decrease(@number_of_legs)
#     end
# end

#   class Remover
#     def decrease(number, step = 1)
#       number -= step
#     end
# end
# animal = Animal.new("lion", 4, "Rex")
#  animal.number_of_legs = 5
#  p animal.number_of_legs
# p animal.number_of_legs
# p animal.remove_leg()
# p animal.number_of_legs
# p ["insect", "bug"].member?('food')
