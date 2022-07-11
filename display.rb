def menudisplay
  puts "Welcome to school library ! \n\n"
  puts 'Please choose an option by entering a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts "7 - Exit\n\n"
  gets.chomp
end

def menu_run_display
  case menudisplay
  when '1'
    list_books
  when '2'
    list_persons
  when '3'
    create_person
  when '4'
    create_book
  when '5'
    create_rental
  when '6'
    list_all_rentals_for_a_given_person_id
  else
    puts 'Thank you for using this App'
    pre_s
    pre_t
    pre_book
    pre_rent
    exit
  end
end

def pre_rent
  @rentals.map { |rent| preservecreaterental(rent) }
end

def pre_s
  @person.map { |student| preservecreatestudent(student) }
end

def pre_t
  @person.map { |teacher| preservecreateteacher(teacher) }
end

def pre_book
  @book_list.map { |book| preservecreatebook(book) }
end
