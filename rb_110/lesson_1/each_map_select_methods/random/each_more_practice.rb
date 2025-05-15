Fewer executions if:
# 1. Modifying the array during iteration:
arr = [1, 2, 3, 4, 5]

arr.each do |num|
  puts num
  arr.pop if num == 2   # Removes elements from the array
  p arr
end

# Output:
# 1
# [1, 2, 3, 4, 5]

# 2
# [1, 2, 3, 4]

# 3
# [1, 2, 3, 4]

# 4
# [1, 2, 3, 4]



# 2. Using `break` within the block:
[1, 2, 3, 4, 5].each do |num|
  break if num > 3
  puts num
end

# Output:
# 1
# 2
# 3
