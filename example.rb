require_relative './trimmer_decorator'
require_relative './person'
require_relative './capitalize_decorator'
require_relative 'base_decorator'
require_relative './book'
require_relative './rental'
require_relative './person'


person = Person.new(22, 'maximilianus')
person.correct_name
capitalizedperson = CapitalizeDecorator.new(person)
capitalizedperson.correct_name
capitalizedtrimmedperson = TrimmerDecorator.new(person)
capitalizedtrimmedperson.correct_name
base = BaseDecorator.new(person)
base.correct_name

person1 = Person.new("ekene", 23)
book = Book.new('biology', 'collins')
book.add_rental(person1, '2022/03/03', book)

