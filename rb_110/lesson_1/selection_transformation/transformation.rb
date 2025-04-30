# Append an 's' to each string in the array.
fruits = ['apple', 'banana', 'pear']
tranformed_elements = []
counter = 0

loop do
  current_element = fruits[counter]

  tranformed_elements << (current_element + 's')

  counter += 1
  break if counter == fruits.size
end

p tranformed_elements   # ["apples", "bananas", "pears"]



# Multiply each element in the collection by `2`.
# Non-mutating method
def double_numbers(numbers)
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

p double_numbers(my_numbers) 
# [2, 8, 6, 14, 4, 12]
p my_numbers
# [1, 4, 3, 7, 2, 6]


# Mutating method
def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter] 
    numbers[counter] = current_number * 2

    counter += 1
  end

  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p my_numbers.object_id

p double_numbers!(my_numbers)
p my_numbers
p my_numbers.object_id

# Output:
# 60
# [2, 8, 6, 14, 4, 12]
# [2, 8, 6, 14, 4, 12]
# 60
