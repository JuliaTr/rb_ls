=begin
What is the default return value of to_s when invoked on an 
object? Where could you go to find out if you want to be sure?

Answer:
By default, the `to_s` method will return the name of the object's
class and an encoding of the object id.
=end

class Dog
end

dog = Dog.new
puts dog.to_s     # #<Dog:0x0000000102195908>
puts dog          # #<Dog:0x0000000102195908>

=begin
The putput is the same kind.

`puts` calls `to_s`. Ruby internally does `puts dog.to_s`

So, both lines use `to_s` method. Since we didn't define own `to_s`,
we get the default implementation from `Object`, which returns that
`#<Dog:0x0000000102195908>`


If hex numbers differ, probably we ran code twice (or in two separate 
IRB lines after re-creating `dog`), so may look at two different `Dog`
objects with different object IDs. If we do it in one go with the 
same object, we'll see the same object IDs
=end

=begin
- Since `Dog` doesn't define `to_s`, Ruby uses `Object#to_s`
- The `to_s` method returns `"#{class_name}:#{object_id_encoding}"`,
  which we see as `#<Dog:0x0000000102195908>`

The string is made up of:
- the class name: `Dog`
- an encoding of the object id: `0x0000000102195908`

Which is the default return value.
=end


## Experiments:
class Dog
  def initialize(name)
    @name = name
  end
end

dog = Dog.new('Fido')

# print custom object
puts dog   # #<Dog:0x0000000100625678>  
#(default value returned from `to_s` method call)


# Override `to_s`:
class Dog
  def initialize(name)
    @name = name
  end

  def to_s
    "Dog named #{@name}"
  end
end

dog = Dog.new("Fido")
puts dog                # Dog named Fido
