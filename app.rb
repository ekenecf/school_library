require_relative './book'
require_relative './teacher'
require_relative './student'
require_relative './person'
require_relative './rental'

class App
  def initialize()
    @book_list = []
    @rentals = []
    @person = []
  end

  def menu
    puts "Welcome to school library ! \n\n"
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts "7 - Exit\n\n"
  end

  def menu_run
    choice = menu
    case choice
    when '1'
      list_all_books
    when '2'
      list_all_person
    when '3'
      create_person
    when '4'
      create_book
    when '5'
      create_rental
    else
      puts 'Thanks for using this App...'
      exit
    end
  end

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

  def create_person
    print "\n Do you want to create a student (1) or a teacher (2)? [Input the number]: "
    user_input = gets.chomp
    case user_input
    when '1'
      create_student
    when '2'
      create_teacher
    else
      print 'Please input either 1 or 2:'
      create_person
    end
    puts "Person created successfully\n"
    gets
    menu_run
  end

  def create_rental
    print 'Select a book: '
    list_all_books
    input1 = gets.chomp
    print 'Select a person: '
    list_all_person
    input2 = gets.chomp.to_i
    print "\n Date(yyyy/mm/dd): "
    gets.chomp
    rental = Rental.new(date, @person[input2], @book_list[input1])
    @rentals.push(rental)
    puts 'Rental created successfully '
    menu_run
  end

  def list_all_books
    @book_list.each_with_index do |item, index|
      puts "#{index} Title: \"#{item.title}\", Author: #{item.author}"
    end
    puts 'Press enter to continue.'
    gets.chomp
    menu_run
  end

  def list_all_person
    @person.each_with_index do |item, index|
      puts "#{index} Name: #{item.name} Age: #{item.age} ID: #{item.id}"
    end
    puts 'Press enter to continue.'
    gets.chomp
    menu_run
  end

  def create_student
    puts 'Enter age: '
    age = gets.chomp
    puts 'Enter name: '
    name = gets.chomp
    puts "'Has parent permission? [Y/N]: '"
    permission = gets.chomp
    if permission == 'N'
      student = Student.new(age, name, permission: false)
      @person.push(student)
    else
      student = Student.new(age, name, permission: true)
    end
    @person.push(student)
  end
end
