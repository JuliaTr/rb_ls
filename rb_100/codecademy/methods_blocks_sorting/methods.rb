def puts_1_to_10
  (1..10).each { |i| puts i }
end

puts_1_to_10

# Output:
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10



# Exercise:
def greeting
  puts "Hello there, Rubyist!"
end

greeting

# Output: Hello there, Rubyist!



# Exercise:
def array_of_10
  puts (1..10).to_a
end

array_of_10

# Output: 
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10



# Exercise (arguments, parameters):
def cubertino(n)
  puts n**3
end

cubertino(8)

# Output: 512



# Exercise (splat arguments):
def what_up(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")

# Output:
# What up, Ian!
# What up, Zoe!
# What up, Zenas!
# What up, Eleanor!



# Exercise (`return` keyword):
def add(num1, num2)
  return num1 + num2
end

p add(1, 2)

# Output: 3



# Exercise:
def greeter(name)
  return "Hey, #{name}!"
end

puts greeter("Jessica")

# Output: Hey, Jessica!



# Exercise:
def by_three?(number)
  if number % 3 == 0
    return true
  else
    return false
  end
end

puts by_three?(3)  # true
puts by_three?(8)  # false
puts by_three?(9)  # true



# Experiments:
def by_three?(number)
  return true if number % 3 == 0
  return false
end

puts by_three?(3)  # true
puts by_three?(8)  # false
puts by_three?(9)  # true
