require 'json'

def preservecreatebook(preservebook)
  book_json_obj = { Book_title: preservebook.title.to_s, Book_author: preservebook.author }

  get_book_array = []

  if File.empty?('book.json')
    File.write('book.json', get_book_array.push(book_json_obj).to_json)
  else
    json = File.read('book.json')
    get_book_array = JSON.parse(json)
    get_book_array << book_json_obj
    File.open('book.json', 'w') do |f|
      f.puts JSON.pretty_generate(get_book_array)
    end
  end
end

def read_saved_book
  File.foreach('book.json') { |line| puts line }
end
