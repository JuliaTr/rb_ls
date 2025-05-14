=begin
Given an array of integers, for each integer output all integers 
from `1` to that integer; e.g. if the integer was `5`, you 
would output `1`, `2`, `3`, `4`, `5`.
=end

# Solution 1:
numbers = [7, 3, 5, 2, 1, 8, 4]
counter = numbers.size  # 7

loop do
  number = numbers[-counter]   # counter = -7 (integer 7)

  for num in 1..number  # 1..7  1..3  1..5  1..2  1..1  1..8  1..4
    puts num
  end

  break if counter == 1
  counter -= 1
end

# Output:
# 1
# 2
# 3
# 4
# 5
# 6
# 7

# 1
# 2
# 3

# 1
# 2
# 3
# 4
# 5

# 1
# 2

# 1

# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8

# 1
# 2
# 3
# 4


# (NOT CORRECT) Solution 2:
# The inner loop runs only once for the first number.
numbers = [7, 3, 5, 2, 1, 8, 4]
counter = 0

loop do
  number = numbers[counter]
  counter = 0

  loop do
    counter += 1
    puts counter

    break if counter >= number
  end

  counter += 1
  break if counter >= numbers.size
end

# Output:
# 1
# 2
# 3
# 4
# 5
# 6
# 7
