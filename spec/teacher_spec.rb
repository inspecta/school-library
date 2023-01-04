require_relative '../teacher'

describe Teacher do
  before :all do
    @teacher = Teacher.new(45, 'Sciences', 'David')
  end

  context 'unit test for the teacher class' do
    it 'should return the correct name' do
      name = @teacher.name
      expect(name).to eq 'David'
    end

    it 'should have the specialization Sciences' do
      specialization = @teacher.specialization
      expect(specialization).to eq 'Sciences'
    end

    it 'should have an age of 45' do
      age = @teacher.age
      expect(age).to eq 45
    end
  end
end