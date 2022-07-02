require_relative './trimmer_decorator'
require_relative './person'
require_relative './capitalize_decorator'
require_relative 'base_decorator'

person = Person.new(22, 'maximilianus')
person.correct_name
capitalizedperson = CapitalizeDecorator.new(person)
capitalizedperson.correct_name
capitalizedtrimmedperson = TrimmerDecorator.new(person)
capitalizedtrimmedperson.correct_name
base = BaseDecorator.new(person)
base.correct_name

# class Owner
#     attr_accessor :name
#     attr_reader :animals

#     def initialize(name)
#       @name = name
#       @animals = []
#     end

#     # Instead of setter for entire collection a method to add animals one by one
#     def add_animal(animal)
#       @animals.push(animal)
#       animal.owner = self
#     end
# end

#   class Animal
#     attr_accessor :owner
#     def initialize(type, number_of_legs, name = "Unknown")
#       @id = Random.rand(1..1000)
#       @name = name
#       @number_of_legs = number_of_legs
#       @type = type
#     end

#     def owner=(owner)
#         @owner = owner
#         owner.animals.push(self) unless owner.animals.include?(self)
#     end
#   end

#   class Dog < Animal
#     def initialize(color, name = "Unknown")
#       super("dog", 4, name)
#       @color = color
#     end

#     def bring_a_stick
#       "Here is your stick: ---------"
#     end
#   end
