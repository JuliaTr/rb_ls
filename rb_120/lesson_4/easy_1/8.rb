=begin
In the name of the `cats_count` method we have used `self`.
What does `self` refer to in this context?
=end

class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age = 0
    @@cats_count += 1
  end

  def self.cats_count  # class method
    @@cats_count
  end
end

cat1 = Cat.new('siam')
cat2 = Cat.new('siam')

p Cat.cats_count   # 2

=begin
Answer:
`self.` prefixing `cat_count` creates class method. Because thi is
a class method `self` represents the class itself, which is `Cat` here.
=end



## Experiments:
class MyClass
  puts self
end
# Output: MyClass


class Cat
  def self.cats_count
    puts "This method was called on the #{self} class"
  end
end

Cat.cats_count   # This method was called on the Cat class
