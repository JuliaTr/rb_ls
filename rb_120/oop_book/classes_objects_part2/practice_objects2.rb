## Class Methods
class GoodDog
  def self.what_am_I     # Class method definition
    "I'm a GoodDog class!"
  end
end

p GoodDog.what_am_I  # "I'm a GoodDog class!"




## Class Variables
class GoodDog
  @@number_of_dogs = 0

  def initialize
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs    # 0

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs    # 2




## Constants
class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky.age       # 28
puts sparky           # #<GoodDog:0x0000000107045508>



# to_s
class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    @name = n
    @age = a * DOG_YEARS
  end

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky
# This dog's name is Sparky and it is 28 in dog years.
p sparky
# #<GoodDog:0x00000001042651d8 @name="Sparky", @age=28>


=begin
irb(main):001:0> arr = [1, 2, 3]
=> [1, 2, 3]
irb(main):002:0> x = 5
=> 5
irb(main):003:0> "The #{arr} array doesn't include #{x}."
=> "The [1, 2, 3] array doesn't include 5."

irb(main):004:0> name = 'Sparky'
=> "Sparky"
irb(main):005:0> age = 28
=> 28
irb(main):006:0> "This dog's name is #{name} and it is #{age} in dog years."
=> "This dog's name is Sparky and it is 28 in dog years."
=end



# Overriding `#to_s`
class Foo
  def to_s
    42
  end
end

foo = Foo.new
puts foo               # #<Foo:0x000000010b805438>
puts "foo is #{foo}"   # foo is #<Foo:0x000000010b805438>



class Foo
  def to_s
    "42"
  end
end

foo = Foo.new
puts foo               # 42
puts "foo is #{foo}"   # foo is 42



class Bar
  attr_reader :xyz

  def initialize
    @xyz = { a: 1, b: 2 }
  end

  def to_s
    'I am a Bar object!'
  end
end

bar = Bar.new
puts bar       # I am a Bar object!
puts bar.xyz   # {:a=>1, :b=>2}




## More about `self`
class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
  end
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
p sparky.what_is_self
=begin
#<GoodDog:0x0000000109624260 @name="Sparky", 
@height="12 inches", @weight="10 lbs">
=end



class MyAwesomeClass
  def self.this_is_a_class_method
  end
end



class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.game   = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.info} weighs #{self.weight} and is #{self.height} tall."
  end

  puts self
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
p sparky
=begin
#<GoodDog:0x0000000109533e78 @name="Sparky", @height="12 
inches", @weight="10 lbs">
=end
