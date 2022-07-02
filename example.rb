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
