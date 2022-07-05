require_relative './list_functions'

def create_person
  print "\n Do you want to create a student (1) or a teacher (2)? [Input the number]: "
  user_input = gets.chomp
  case user_input
  when '1'
    create_student
  when '2'
    create_teacher
  else
    print 'Please input either 1 or 2:'
    create_person
  end
  puts "Person created successfully\n"
  gets
  menu_run
end

def create_student
  puts 'Enter age: '
  age = gets.chomp
  puts 'Enter name: '
  name = gets.chomp
  puts "'Has parent permission? [Y/N]: '"
  permission = gets.chomp
  if permission == 'N'
    student = Student.new(age, name, parent_permission: false)
    @person.push(student)
  else
    student = Student.new(age, name, parent_permission: true)
  end
  @person.push(student)
end

def create_teacher
  puts 'enter name: '
  name = gets.chomp
  puts 'enter specialization: '
  specialization = gets.chomp
  puts 'enter age: '
  age = gets.chomp
  puts "'Has parent permission? [Y/N]: '"
  permission = gets.chomp
  if permission == 'N'
    teacher = Teacher.new(age, specialization, name, parent_permission: false)
    @person.push(teacher)
  else
    teacher = Teacher.new(age, specialization, name, parent_permission: true)
  end
  @person.push(teacher)
end
