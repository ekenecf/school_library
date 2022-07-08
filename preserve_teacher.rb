require 'json'

def preservecreateteacher(preserveteacher)
    # p preserveteacher
    teacher_json_obj = preserveteacher.map { |person|  { Teacher_age: person.age, Teacher_name: person.name } }
    teacher_generate = JSON.generate(teacher_json_obj)
    book_file = File.open('teacher.json', 'w')
    book_file.write(teacher_generate)
    book_file.close
end

def read_saved_teacher
    File.foreach("teacher.json") { |line| puts line }
    # file_data = File.read("rental.json").split
end
