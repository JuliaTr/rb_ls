# What happens in each of the following cases:

class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

# case 1:
hello = Hello.new
hello.hi             # Hello  (line 10)

# case 2:
hello = Hello.new
hello.bye            
# undefined method `bye' for #<Hello:0x0000000103b74f68> NoMethodError

=begin
Neither the `Hello` class nor its parent class `Greeting` have a `bye`
method defined.
=end

case 3:
hello = Hello.new
hello.greet          
# wrong number of arguments (given 0, expected 1) (ArgumentError)

=begin
The `Hello` class can eccess its parent class's `greet` method, but 
`greet` takes an argument which is not being supplied if we just 
call `greet` by itself.
=end

# case 4:
hello = Hello.new
hello.greet("Goodbye") # Goodbye  (line 4)

# case 5:
Hello.hi             
# undefined method `hi' for Hello:Class (NoMethodError)

=begin
The `hi` method is defined for instances of the `Hello` class,
rather than on the class itself. Since we're attempting to call
`hi` on the `Hello` class, rather than an instance of the class,
Ruby cannot find the method on the class definition.
=end
