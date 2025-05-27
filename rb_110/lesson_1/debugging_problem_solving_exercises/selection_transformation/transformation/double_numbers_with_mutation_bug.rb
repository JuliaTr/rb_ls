def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter = numbers.size           # issue

    numbers[counter] == numbers[counter] * 2  # issue

    counter += 1
  end

  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers!(my_numbers)
p my_numbers
# should mutate my_numbers to [2, 8, 6, 14, 4, 12]

# Output: 
# [1, 4, 3, 7, 2, 6]
# [1, 4, 3, 7, 2, 6]

# Doesn't work as expected



## Bug fix
def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] = numbers[counter] * 2

    counter += 1
  end

  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers!(my_numbers)
p my_numbers

# Output:
# [2, 8, 9, 14, 4, 12]
# [2, 8, 9, 14, 4, 12]

# Works as expected
