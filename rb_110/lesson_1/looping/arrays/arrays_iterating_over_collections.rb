colors = ['green', 'blue', 'purple', 'orange']
counter = 0

loop do
  break if counter == colors.size
  puts "I'm the color #{colors[counter]}!"
  counter += 1
end

# Output:
# I'm the color green!
# I'm the color blue!
# I'm the color purple!
# I'm the color orange!



objects = ['hello', :key, 10, []]
counter = 0

loop do
  break if counter == objects.size
  puts objects[counter].class
  counter += 1
end

# Output:
# String
# Symbol
# Integer
# Array
