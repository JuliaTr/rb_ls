=begin
Given the class below, how do we create two different instances 
of this class with separate names and ages?
=end

class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

cat1 = AngryCat.new(7, 'Pusha')
cat1.age
cat1.name

cat2 = AngryCat.new(11, 'Timon')
cat2.age
cat2.name

=begin
7
Pusha
11
Timon
=end

=begin
When the `AngryCat` object is created, we pass the constructor two
values - an age and a name. These values are assigned to the new object's
instance variables. Each object has different information.

These objects have two different sets of attributes from when they were 
created.
=end
