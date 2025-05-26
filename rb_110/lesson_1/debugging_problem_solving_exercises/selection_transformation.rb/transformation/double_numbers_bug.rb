def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number + 2  # issue is here

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers(my_numbers)  
# should return [2, 8, 6, 14, 4, 12]

# Output: [3, 6, 5, 9, 4, 8]

# Doesn't work as expected



## Bug fix
def doubled_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * 2

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p doubled_numbers(my_numbers)
# [2, 8, 9, 14, 4, 12]
