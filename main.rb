require_relative './app'
# file = File.open("rental.rb")
# file_data = file.read
# file_data = file.readlines.map(&:chomp)
# file.close

# instead of opening and closing, you could use File.read ie
# file_data = File.read("user.txt").split

# If you want to process a file one line at a time, you can use the foreach method. eg
# File.foreach("users.txt") { |line| puts line }


def main
  newapp = App.new
  newapp.menu_run
end
main

# numbers = [2, 2, 2, 2, 2]
# # numbers.reduce(11, :+)
# numbers.reduce()
