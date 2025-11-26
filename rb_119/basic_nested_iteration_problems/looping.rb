## Looping
index = 0

loop do
  puts "Ruby"
  break if index == 3
  index += 1
end

# Output:
# Ruby
# Ruby
# Ruby
# Ruby



## Iterating
arr = [1, 2, 3]
index = 0

loop do
  p arr[index]
  break if index == arr.size
  index += 1
end

# Output:
# 1
# 2
# 3
# nil


arr = [1, 2, 3]
index = 0

loop do
  p arr[index]
  break if index == arr.size - 1
  index += 1  
end

# Output:
# 1
# 2
# 3



[1, 2, 3].each { |val| puts val }

# Output:
# 1
# 2
# 3
