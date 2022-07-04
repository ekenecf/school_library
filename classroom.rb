require_relative './student'

class Classroom
  attr_accessor :label, :students

  def initialize(label)
    @label = label
  end

  def add_student(student)
    @students.push(student)
    student.classroom = self
  end
end

# p student1 = Student.new(23, 'basic 2', 'ekene')
# student1.
# p class1 = Classroom.new("basic1")
# p class1.add_student('student1')
