=begin
If we have the class below, what would you need to call to create 
a new instance of this class.
=end

class Bag
  def initialize(color, material)
    @color = color
    @material = material
  end
end

bag1 = Bag.new('red', 'cotton')

=begin
We need to pass in two arguments to `new` method infocation to create
an instance successfully, because`initialize` expects 2 arguments.
=end
