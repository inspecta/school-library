require_relative '../book'

describe Book do
  before :all do
    @book = Book.new('Learn Ruby', 'Matsumoto')
  end

  context 'Unit test for Book class' do
    it 'should have a title Learn Ruby' do
      title = @book.title
      expect(title).to eq 'Learn Ruby'
    end

    it 'show have an author Matsumoto' do
      author = @book.author
      expect(author).to eq 'Matsumoto'
    end
  end
end