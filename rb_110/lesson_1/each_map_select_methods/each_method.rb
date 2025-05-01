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
