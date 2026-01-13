=begin
This exercise can be solved in a similar manner by using 
inheritance; a Noble is a Person, and a Cheetah is a Cat, and 
both Persons and Cats are Animals. 

What changes would you need to make to this program to establish 
these relationships and eliminate the two duplicated `#to_s` 
methods?
=end

module Walkable
  def walk
    puts "#{self} #{gait} forward"
  end
end

class Person
  attr_reader :name

  include Walkable

  def initialize(name)
    @name = name
  end

  def to_s
    name
  end

  private

  def gait
    "strolls"
  end
end

class Cat
  attr_reader :name

  include Walkable

  def initialize(name)
    @name = name
  end

  def to_s
    name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah < Cat
  private

  def gait
    "runs"
  end
end

class Noble < Person
  attr_reader :title

  def initialize(name, title)
    super(name)
    @title = title
  end

  def to_s
    "#{title} #{name}"
  end

  private

  def gait
    "struts"
  end
end
mike = Person.new('Mike')
byron = Noble.new("Byron", "Lord")

mike.walk
byron.walk

p byron.name
p byron.title

kitty = Cat.new("Kitty")
kitty.walk

flash = Cheetah.new("Flash")
flash.walk

=begin
Mike strolls forward
Lord Byron struts forward
"Byron"
"Lord"
Kitty saunters forward
Flash runs forward
=end
