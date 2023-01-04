require_relative '../student'

describe Student do
  before :all do
    @student = Student.new('science', 24, 'Student')
  end

  context 'Unit test for the student class' do
    it 'Should have the name student' do
      name = @student.name
      expect(name).to eq 'Student'
    end
  end

  it 'should have the classroom science' do
    classroom = @student.classroom
    expect(classroom).to eq 'science'
  end

  it'should have the age of 24' do
    age = @student.age
    expect(age).to be 24
  end
end