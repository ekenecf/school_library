require 'json'

def preservecreateteacher(preserveteacher)
  teacher_json_obj = { Teacher_age: preserveteacher.name, Teacher_name: preserveteacher.age.to_s }

  get_teacher_array = []

  if File.empty?('teacher.json')
    File.write('teacher.json', get_teacher_array.push(teacher_json_obj).to_json)
  else
    json = File.read('teacher.json')
    get_teacher_array = JSON.parse(json)
    get_teacher_array << teacher_json_obj
    File.open('teacher.json', 'w') do |f|
      f.puts JSON.pretty_generate(get_teacher_array)
    end
  end
end

def read_saved_teacher
  File.foreach('student.json') { |line| puts line }
end
