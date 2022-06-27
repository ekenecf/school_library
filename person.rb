class Person
  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Random.rand(1...7000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # accessor get method
  attr_reader :id

  # accessor set method
  attr_accessor :name, :age

  def of_age?
    @age >= 18
  end
  private :of_age?

  def can_use_services?
    of_age? || @parent_permission
  end
end

# ekene = Person.new(16, 'john')
# puts ekene.age
