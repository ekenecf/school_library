require 'json'

def preservecreatestudent(preservestudent)
  student_json_obj = { Student_age: preservestudent.name, Student_name: preservestudent.age.to_s }

  get_student_array = []

  if File.empty?('student.json')
    File.write('student.json', get_student_array.push(student_json_obj).to_json)
  else
    json = File.read('student.json')
    get_student_array = JSON.parse(json)
    get_student_array << student_json_obj
    File.open('student.json', 'w') do |f|
      f.puts JSON.pretty_generate(get_student_array)
    end
  end
end

def read_saved_student
  File.foreach('student.json') { |line| puts line }
end
