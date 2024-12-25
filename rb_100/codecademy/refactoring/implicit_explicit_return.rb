# Exercise:
# Explicit return:
def multiple_of_three(n)
  return n % 3 == 0 ? "True" : "False"
end

puts multiple_of_three(3)  # True
puts multiple_of_three(5)  # False


# Implicit return:
def multiple_of_three(n)
  n % 3 == 0 ? "True" : "False"
end

puts multiple_of_three(3)  # True
puts multiple_of_three(5)  # False



# Exercise:
def square(number)
  puts "#{number} * #{number} is"
  number * number
end

puts square(2)

# Output:
# 2 * 2 is
# 4
