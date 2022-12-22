require './book'
require './rental'
require './student'
require './teacher'
require './create_student'
require './create_teacher'
require './main'
require './list_rentals'
require './rent_out_book'

class App
  attr_accessor :books, :persons, :rentals

  def initialize
    @books = []
    @persons = []
    @rentals = []
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def select_option
    option = gets.chomp

    case option
    when '1' then list_all_books
    when '2' then list_all_people
    when '3' then create_a_person
    when '4' then create_a_book
    when '5' then create_a_rental
    when '6' then list_rentals
    when '7' then stop_application
    else
      puts 'Invalid option. Option must be between 1 and 7'
      select_option
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity

  def library_menu
    puts ''
    puts 'Welcome to School library App!'
    puts ''
    puts 'Please chose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
    puts ''
    select_option
  end

  def list_all_books
    if @books.empty?
      puts 'No books available at the moment.'
      puts ''
      puts 'Enter 4 to create a new book'
      select_option
    else
      puts 'List of available books:'
      puts ''
      @books.each do |book|
        puts "Title: #{book.title}, Author: #{book.author}"
      end
      library_menu
    end
  end

  def list_all_people
    if @persons.empty?
      puts 'No people available at the moment'
      puts ''
      puts 'Enter 3 to create a new person'
      select_option
    else
      puts 'List of available people:'
      puts ''
      @persons.each do |person|
        puts "#{[person.class]} Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
      library_menu
    end
  end

  def create_a_book
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    @books.push(Book.new(title, author))
    puts 'Book successfully created!'
    library_menu
  end

  def create_a_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    person_no = gets.chomp

    case person_no
    when '1'
      create_a_student
    when '2'
      create_a_teacher
    else
      puts 'Invalid selection'
      puts ''
    end
    library_menu
  end

  def create_a_rental
    rent_book
  end

  def list_rentals
    list_person_rentals
  end

  def stop_application
    puts 'Thank you for using this app'
    exit
  end

  start_app = Main.new
  start_app.main
end
