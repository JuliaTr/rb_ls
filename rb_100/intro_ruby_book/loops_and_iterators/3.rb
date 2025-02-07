# Write a method that counts down to zero using recursion.

# Solution:
def countdown(number)
  puts number
  if number > 0
    countdown(number - 1)
  end
end

countdown(5)

# Output:
# 5
# 4
# 3
# 2
# 1
# 0


# From the book:
def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number - 1)
  end
end

count_to_zero(10)

# Output:
# 10
# 9
# 8
# 7
# 6
# 5
# 4
# 3
# 2
# 1
# 0

count_to_zero(20)

# Output:
# 20
# 19
# 18
# 17
# 16
# 15
# 14
# 13
# 12
# 11
# 10
# 9
# 8
# 7
# 6
# 5
# 4
# 3
# 2
# 1
# 0

count_to_zero(-3)

# Output: -3
