require './app'
require './person'
require './student'
require './teacher'
require './nameable'
require './book'
require './rental'

def list_person_rentals
  if @persons.empty?
    puts 'No people found'
    puts 'Enter 3 to add people. After, proceed to create rentals for  them'
    select_option
  else
    puts 'List of available people:'
    puts ''
    @persons.each do |person|
      puts "#{[person.class]} Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    puts ''
    print 'ID of person: (Choose "ID" from the above list)'
    puts ''
    person_id = gets.chomp.to_i
    puts ''
    puts 'Rentals:'
    @rentals.each do |rental|
      puts rental.person.id
      puts person_id
      if rental.person.id.to_i == person_id
        puts "Date: #{rental.date}, Book: #{rental.book.title} by #{rental.book.author}"
      else
        puts 'Sorry, no rentals found!'
        puts ''
        puts 'Enter 5 to create a rental for the person'
        select_option
      end
    end
    library_menu
  end
end
