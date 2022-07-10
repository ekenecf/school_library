require_relative './list_functions'
require_relative './preserve_book'
require_relative './preserve_rental'

def create_book
  print 'Title: '
  input1 = gets.chomp
  print 'Author: '
  input2 = gets.chomp
  book = Book.new(input1, input2)
  @book_list.push(book)
  # preservecreatebook(@book_list)
  puts 'Book created successfully '
  menu_run
end

def create_rental
  print 'Select a book: '
  list_all_books
  input1 = gets.chomp.to_i
  print 'Select a person: '
  list_all_people
  input2 = gets.chomp.to_i
  print "\n Date(yyyy/mm/dd): "
  date = gets.chomp
  rental = Rental.new(date, @person[input2], @book_list[input1])
  @rentals.push(rental)
  # preservecreaterental(@rentals)
  puts 'Rental created successfully '
  menu_run
end
