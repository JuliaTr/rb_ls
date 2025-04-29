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
