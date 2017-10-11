require './lib/animals'
require './lib/dog'

dog = Dog.new('Winston')

describe 'Dog' do
  context 'is initalized' do
    it 'has the attribute name' do
      expect(dog).to have_attributes(name: 'Winston')
    end
  end
  context 'Dog is inital'
end
