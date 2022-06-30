require_relative './trimmer_decorator'
require_relative './person'
require_relative './capitalize_decorator'

person = Person.new(22, 'maximilianus')
p person.correct_name
capitalizedperson = CapitalizeDecorator.new(person)
p capitalizedperson.correct_name
capitalizedtrimmedperson = TrimmerDecorator.new(person)
p capitalizedtrimmedperson
p capitalizedtrimmedperson.correct_name
