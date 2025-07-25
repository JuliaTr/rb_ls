def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if current_number.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_numbers(my_numbers) # should return [2, 4, 6, 14, 2, 6]
p my_numbers

# Output: 
# [2, 4, 6, 14, 2, 6]
# [1, 4, 3, 7, 2, 6]

# Works as expected
