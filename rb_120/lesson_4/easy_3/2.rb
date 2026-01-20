# If we call `Hello.hi` we get an error message. How would you fix this?

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



## Possible solution
class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def self.hi
    greeting = Greeting.new
    greeting.greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

Hello.hi    # Hello



## Experiments
class Greeting
  def greet(message)
    put message
  end
end

class Hello < Greeting
  def self.hi
    greet("Hello")
  end
end

Hello.hi # undefined method `greet' for Hello:Class (NoMethodError)
