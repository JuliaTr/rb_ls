# Fewer executions if:
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
