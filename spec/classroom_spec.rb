require_relative '../classroom'

describe Classroom do
  before :all do
    @classroom = Classroom.new('label_1')
  end

  context 'unit test for the classroom class' do
    it 'should have the label label_1' do
      label = @classroom.label
      expect(label).to eq 'label_1'
    end
  end
end
