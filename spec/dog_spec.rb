require './lib/animals'
require './lib/dog'

dog = Dog.new('Winston')
dog_two = Dog.new('Garry')
dog_two.speed = 23

describe 'Dog' do
  context 'is initalized' do
    it 'has the attribute name' do
      expect(dog).to have_attributes(name: 'Winston')
    end
  end
  context 'is initialized with no argunments' do
    it 'and has no arguments' do
      expect(dog.name).to eq('Winston')
      expect(dog.species).to eq('Dog')
      expect(dog.legs).to eq(0)
    end
  end
  context 'name is a string' do
    it 'and allows reading of name' do
      expect(dog).to have_attributes(name: a_string_starting_with('W'))
    end
  end
  context 'species is its actual species' do
    it 'has a specified species' do
      expect(dog.species).to include(dog.species)
    end
  end
  context 'name is a string' do
    it 'allows reading of a name that is a string' do
    expect(dog.name).to be_a(String)
    end
  end
  context 'speed is an accessible property' do
    it 'allow reading and writing of speed' do
      expect(dog_two.speed).to eq(23)
    end
  end
  context 'legs is a number' do
    it 'should have at least 1 leg' do
    dog_two.legs = 0
    expect(dog.walk).to raise_error(TypeError)
    end
  end
  context 'walks when legs are greater than 0' do
    it 'speed should be relational to the number of legs' do
      expect(dog.speed).to eq((0.1 * dog.legs))
    end
  end
end



