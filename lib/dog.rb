require_relative 'animals'

class Dog < Animal

  def initialize(name)
    super(name, "Dog") #calls Animal's initialize
  end

  # Sets the speed of the dog
  def walk
    if @legs > 0
      @speed = @speed + (0.2 * @legs)
    else
      raise TypeError, "This dog don't exist."
    end
  end
end