require 'json'

def preservecreatestudent(preservestudent)
    p preservestudent
    # student_json_obj = preservestudent.map { |person|  { Student_age: person.age, Student_name: person.name } }
    student_json_obj =  [name: preservestudent.last.name, age: preservestudent.last.age]
  p  student_generate = JSON.generate(student_json_obj)
    # data_hash = JSON.parse(File.read('student.json')) 
    # data_hash.push(student_generate)
    # read_write =  File.open('student.json', 'w') do |f| 
    # f.puts student_generate
    # end
    read_write_append =  File.open('student.json', 'a') do |f| 
        f.puts student_generate
    end
    # if File.empty?('student.json')
    #     # return File.open('student.json', 'w') do |f| f.puts student_generate end
    #   return  read_write
    # else
    #     # return File.open('student.json', 'a') do |f| f.puts student_generate end
    #   return  read_write.push(read_write_append)
    # end
# f = File.open('student.json', 'w')
# f.write student_generate

end

def read_saved_student
    File.foreach("student.json") { |line| puts line}
    # file_data = File.read("student.json")
    # data_hash = JSON.parse(File.read('student.json'))
#  p  data_hash.first
#     data_hash
#    p data_array.map { |student| student}
end
