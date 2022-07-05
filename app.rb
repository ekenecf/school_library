require_relative './book'
require_relative './teacher'
require_relative './student'
require_relative './person'
require_relative './rental'
require_relative './display'
require_relative './list_functions'
require_relative './create_book_rental'
require_relative 'create_person'

class App
  def initialize()
    @book_list = []
    @rentals = []
    @person = []
  end

  def menu
    menudisplay
  end

  def menu_run
    menu_run_display
  end
end
