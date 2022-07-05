require_relative './list_functions'

def create_book
  print 'Title: '
  input1 = gets.chomp
  print 'Author: '
  input2 = gets.chomp
  book = Book.new(input1, input2)
  @book_list.push(book)
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
  date = gets.chomp.to_i
  rental = Rental.new(date, @person[input2], @book_list[input1])
  @rentals.push(rental)
  puts 'Rental created successfully '
  menu_run
end
