=begin
Modify the House class so that the above program will work. 
You are permitted to define only one new method in House.

Expected output:
Home 1 is cheaper
Home 2 is more expensive

Hint: You may find the `Comparable` module useful.
=end

class House
  attr_reader :price

  def initialize(price)
    @price = price
  end
end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1

# undefined method `<' for #<House:0x00000001082957a8 @price=100000> (NoMethodError)




## Possible solution
module Comparable
end

class House
  attr_reader :price
  include Comparable

  def initialize(price)
    @price = price
  end

  def <=>(other)
    price <=> other.price
  end
end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1

=begin
Home 1 is cheaper
Home 2 is more expensive
=end
