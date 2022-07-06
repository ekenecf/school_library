def list_all_books
  @book_list.each_with_index do |item, index|
    puts "#{index} Title: \"#{item.title}\", Author: #{item.author}"
  end
end

def list_books
  list_all_books
  puts 'Press enter to continue.'
  gets.chomp
  menu_run
end

def list_all_people
  @person.each_with_index do |item, index|
    puts "#{index} Name: #{item.name} Age: #{item.age} ID: #{item.id}"
  end
end

def list_persons
  list_all_people
  puts 'Press enter to continue.'
  gets.chomp
  menu_run
end

def list_all_rentals_for_a_given_person_id
  puts 'Please enter a person id: '
  userid = gets.chomp.to_i
  rent = @rentals.select do |rents|
    rents.person.id == userid
  end
  if rent.empty?
    puts 'No rental found for this person ID'
  else
    rent.each do |item|
      puts "Date: #{item.date} Book:\"#{item.book.title}\" by #{item.book.author}"
    end
  end
  menu_run
end
