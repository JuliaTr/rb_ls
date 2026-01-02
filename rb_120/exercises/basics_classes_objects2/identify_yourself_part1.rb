=begin
Using the following code, add a method named `#identify` that 
returns its calling object.
=end

class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def identify
    self        # refers to the calling object
  end
end

kitty = Cat.new('Sophie')
p kitty.identify    #<Cat:0x000000010a315870 @name="Sophie">
p kitty             #<Cat:0x000000010da25838 @name="Sophie">
