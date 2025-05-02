# Print each element in the array
# equivalent to `#each`
numbers = [1, 2, 3]
counter = 0

loop do
  break if counter == numbers.size
  puts numbers[counter]
  counter += 1
end

# Output:
# 1
# 2
# 3


# `#each`
[1, 2, 3].each do |num|
  puts num
end

# Output:
# 1
# 2
# 3



# Print each key-value pair from the hash
hash = { a: 1, b: 2, c: 3 }

hash.each do |key, value|
  puts "The key is #{key} and the value is #{value}"
end

# Output:
# The key is a and the value is 1
# The key is b and the value is 2
# The key is c and the value is 3
