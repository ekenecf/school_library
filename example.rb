require_relative './trimmer_decorator'
require_relative './person'
require_relative './capitalize_decorator'

person = Person.new(22, 'maximilianus')
p person.correct_name
capitalizedPerson = CapitalizeDecorator.new(person)
p capitalizedPerson.correct_name
 capitalizedTrimmedPerson = TrimmerDecorator.new(person)
 p capitalizedTrimmedPerson
p capitalizedTrimmedPerson.correct_name
