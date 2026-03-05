=begin
The following code is intended to change a `Dog`'s name, but it 
doesn't work as expected. The output is `Fido`, not `Sparky`. 
What is the reason for this bug?
=end

class Dog
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def change_name(new_name)
    # `name` is a local variable, not a setter method call
    name = new_name  # doesn't work
  end
end

fido = Dog.new("Fido")
fido.change_name("Sparky")
puts fido.name  # Fido




## Bug fix
class Dog
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def change_name(new_name)
    self.name = new_name
  end
end

fido = Dog.new("Fido")
fido.change_name("Sparky")
puts fido.name # Sparky
