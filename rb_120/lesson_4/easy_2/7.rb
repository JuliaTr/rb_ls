=begin
Explain what the @@cats_count variable does and how it works. 
What code would you need to write to test your theory?
=end

class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
    puts @@cats_count
  end

  def self.cats_count
    @@cats_count
  end
end

p Cat.cats_count
p Cat.new('siam')       
p Cat.new('persian')
p Cat.cats_count
=begin
0
1
#<Cat:0x0000000106845240 @type="siam", @age=0>
2
#<Cat:0x0000000106844f20 @type="persian", @age=0>
2
=end

=begin
The `@@cats_count` initialized on line 7 is a class variable. It 
differentiated from another variable by the double `@@` prepended 
to their name. 

`@@cats_count` keeps track of how many cat instances have been created.
On line 7, `@@cats_count` is initialized and references an Integer with
a value of `0`.

All objects `Can.new('siam')`(line 21) and `Cat.new('persian')` 
(line 22) created share 1 copy of the class variable. Every time 
a cat object is created a new instance if the class `Cat` is created.
During the object creation process it will call the `initialize` method
and here the value reference by `@@cats_count` is incremented (line 12).

Objects can 
access class variables the way way as instance methods like 
`Cat.cats_count` (lines 21, 24). Class method `self.cats_count` defined
on lines 16-18, can access `@@cats_count` (line 17).
=end
