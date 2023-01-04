require_relative '../person'

describe Person do
  before :all do
    @person = Person.new(12, 'Dickson')
  end

  context 'Unit test for the person class' do
    it 'should have an age of 12' do
      age = @person.age
      expect(age).to be 12
    end

    it 'should have a name Dickson' do
      name = @person.name
      expect(name).to eql 'Dickson'
    end
  end
end
