require './lib/animals'

animal = Animal.new
dog = Dog.new


describe 'Animal' do
  context 'is initialized' do
    it 'has the attribute name' do
      expect(animal).to have_attributes(:name => nil)
    end
  end
  context 'when animal and dog are initalized with 8 and 4 legs' do
    it 'will have the same speed' do
      expect(animal.speed(2.0)).to eq(dog.speed)
    end
  end
end