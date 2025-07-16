# Write a method named `greet` that invokes `hello` and `world` methods.
def hello
  'Hello'
end

def world
  'World'
end

def greet
  "#{hello} #{world}"
end

puts greet  # Hello World
