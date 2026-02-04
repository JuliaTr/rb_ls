=begin
Given the following code, select the method lookup path that Ruby 
will use as a result of the call to the `fly` method?
=end

module Flight
  def fly; end
end

module Aquatic
  def swim; end
end

module Migratory
  def migrate; end
end

class Animal
end

class Bird < Animal
end

class Penguin < Bird
  include Aquatic
  include Migratory
end

pingu = Penguin.new
pingu.fly    # NoMethodError

# Penguin > Migratory > Aquatic > Bird > Animal > Object > Kernel 
#         > BasicObject
