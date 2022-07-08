require 'json'

def preservecreatebook(preservebook)
    book_json_obj = preservebook.map { |book|  { Book_Title: book.title, Book_Author: book.author } }
    book_generate = JSON.generate(book_json_obj)
    File.open('book.json', 'w') do |f| 
    f.puts book_generate
    end
end

def read_saved_book
    File.foreach("book.json") { |line| puts line }
    # file_data = File.read("rental.json").split
end
