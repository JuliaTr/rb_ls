=begin
What happens when we modify an array while we are iterating 
over it? What would be output by this code?
=end

# Example 1
numbers = [1, 2, 3, 4]

numbers.each do |number|
  p number
  numbers.shift(1)
end


# Answer:
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  p numbers.shift(1)
  p numbers
end

p numbers

# Output:
# 1
# [1]
# [2, 3, 4]

# 3
# [2]
# [3, 4]

# [3, 4]


numbers = [1, 2, 3, 4]

numbers.each_with_index do |number, index|
  p "#{index}  #{numbers.inspect}  #{number}"
  numbers.shift(1)
end

# Output:
# "0  [1, 2, 3, 4]  1"
# "1  [2, 3, 4]  3"



# Example 2:
numbers = [1, 2, 3, 4]

numbers.each do |number|
  p number
  numbers.pop(1)
end


# Answer:
numbers = [1, 2, 3, 4]

numbers.each do |number|
  p number
  p numbers.pop(1)
  p numbers
end

p numbers

# Output:
# 1
# [4]
# [1, 2, 3]

# 2
# [3]
# [1, 2]
# [1, 2]


numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "#{index}  #{numbers.inspect}  #{number}"
  numbers.pop(1)
end

# Output:
# "0  [1, 2, 3, 4]  1"
# "1  [1, 2, 3]  2"
