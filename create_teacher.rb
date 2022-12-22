require './teacher'
require './person'
require './nameable'

def create_a_teacher
  print 'Age: '
  age = gets.chomp

  print 'Name: '
  name = gets.chomp

  print 'Specialization: '
  specialization = gets.chomp

  @persons.push(Teacher.new(specialization, age, name))
  puts 'Teacher created successfully!'
  puts ''
end
