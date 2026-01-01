=begin
What is the problem and how would you go about fixing it?

bob = Person.new
bob.hi

NoMethodError: private method `hi' called for #<Person:0x007ff61dbb79f0>
from (irb):8
from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'
=end

class Person
  private

  def hi
    puts 'Hi!'
  end
end

bob = Person.new
bob.hi
=begin
private method `hi' called for #<Person:0x0000000109705828> 
(NoMethodError)

The `NoMethodError` has happened because `hi` method is private
(line 13), that's why it is unavailable to the object 
`bob` (line 21).
=end


# Bug fix:
class Person
  def hi
    puts 'Hi!'
  end
end

bob = Person.new
bob.hi   # Hi!



## Possible solution
class Person
  def public_hi
    hi  # method
  end

  private

  def hi
    puts 'Hi!'
  end
end

bob = Person.new
bob.public_hi     # Hi!



# Experiments:
class Person
  protected

  def hi
    puts 'Hi!'
  end
end

bob = Person.new
bob.hi
=begin
protected method `hi' called for #<Person:0x00000001060356b8> 
(NoMethodError)
=end
