require './student'
require './person'
require './nameable'

def create_a_student
  print 'Age: '
  age = gets.chomp

  print 'Name: '
  name = gets.chomp

  print 'Has parent permission? [Y/N]: '
  permission = gets.chomp

  case permission
  when 'y', 'Y'
    @persons.push(Student.new(true, age, name))
    puts 'Student created successfully'
  when 'n', 'N'
    @persons.push(Student.new(false, age, name))
    puts 'Student created successfully'
  else
    puts 'Invalid permission (Enter Y/N)'
    library_menu
  end
end
