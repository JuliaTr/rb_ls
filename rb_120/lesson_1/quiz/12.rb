=begin
Examine the following code. Which of the following statements is 
true about `molly` and `max`?
=end

class Cat
  def initialize(name, coloring)
    @name = name
    @coloring = coloring
  end

  def purr; end

  def jump; end

  def sleep; end

  def eat; end
end

max = Cat.new("Max", "tabby")
molly = Cat.new("Molly", "gray")

# They have different states but the same behaviours.
