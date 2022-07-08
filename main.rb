require_relative './app'
require_relative './preserve_rental'
require_relative './preserve_book'
require_relative './preserve_student'
require_relative './preserve_teacher'

def main
  # read_saved_data
  # read_saved_book
  read_saved_student
  # read_saved_teacher
  newapp = App.new
  newapp.menu_run
end
main
