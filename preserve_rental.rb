require 'json'

def preservecreaterental(preserverental)
  rental_json_obj = {  Renter_name: preserverental.person.name, Renter_age:preserverental.person.age, Rented_book:preserverental.book.title, Rented_book_author:preserverental.book.author, Rent_date: preserverental.date }
  get_rented_array = []

  if File.empty?('rental.json')
    File.write('rental.json', get_rented_array.push(rental_json_obj).to_json)
  else
    json = File.read('rental.json')
    get_rented_array = JSON.parse(json)
    get_rented_array << rental_json_obj
    File.open('rental.json', 'w') do |f|
      f.puts JSON.pretty_generate(get_rented_array)
    end
  end
end

def read_saved_data
  File.foreach('rental.json') { |line| puts line }
end
