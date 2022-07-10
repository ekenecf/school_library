require 'json'

def preservecreaterental(preserverental)
  rent_json_obj = preserverental.map do |rental|
    {
      Rent_Date: rental.date,
      Person_name: rental.person.name,
      book_rented: rental.book.title,
      rented_by: rental.book.author
    }
  end
  rent_generate = JSON.generate(rent_json_obj)
  File.open('rental.json', 'w') do |f|
    f.puts rent_generate
  end
end

def read_saved_data
  File.foreach('rental.json') { |line| puts line }
  # file_data = File.read("rental.json").split
end
