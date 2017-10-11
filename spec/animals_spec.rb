require './lib/animals'

animal = Animal.new
animal.legs = 4
cat = Animal.new("Cat")
owl = Animal.new("Owl", "Bird")
gazelle = Animal.new
gazelle.speed = 76


describe 'Animal' do
  context 'is initialized' do
    it 'has the attribute name' do
      expect(animal).to have_attributes(:name => nil)
    end
  end
  context 'animal is initialized with no arguments' do
    it 'animal has no arguments' do
      expect(animal.name).to be_nil
      expect(animal.species).to be_nil
      expect(animal.speed).to eq(0)
      expect(animal.legs).to eq(0)
    end
  end
  context 'animals name is a string' do
    it 'allows reading of name' do
      expect(cat).to have_attributes(:name => a_string_starting_with("C"))
    end
  end
  context 'animals species is its actual species' do
    it 'animal has a specified species' do
      expect(owl.species).to include(owl.species)
    end
  end
  context 'animals name is a String' do
    it 'allows ready of a name that is a string' do
      expect(cat.name).to be_a(String)
    end
  end
  context 'if speed is an accessible property' do
    it 'allows reading and writing of speed' do
      expect(gazelle.speed).to eq(76)
    end
  end
  context 'if legs is a number' do
    it 'animal should have at least 1 leg' do
      # animal.legs = 0
      expect(animal.walk).to raise_error(TypeError)
    end
  end
  context 'test walk when legs are greater than 0' do
    it 'speed should be relational to the number of legs' do
      expect(animal.speed).to eq((0.1 * animal.legs))
    end
  end
end