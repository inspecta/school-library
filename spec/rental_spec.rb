require_relative '../rental'

describe Rental do
  before :all do
    @book = Book.new('Learn Ruby', 'Matsumoto')
    @student = Student.new('science', 24, 'Student')
    @rental = Rental.new('12/01/2023', @student, @book)
  end

  context 'Class rental unit test' do
    it 'Shoud have a rental date 12/01/2023' do
      date = @rental.date
      expect(date).to eql '12/01/2023'
    end

    it 'Shoud have person "Student" renting out the book' do
      name = @rental.person.name
      expect(name).to eql 'Student'
    end

    it 'should have book title of Learn Ruby' do
      title = @rental.book.title
      expect(title).to eql 'Learn Ruby'
    end
  end
end
