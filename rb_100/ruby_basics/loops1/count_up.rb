# The following code outputs a countdown from 10 to 1. Modify 
# the code so that it counts from 1 to 10 instead.
count = 10

until count == 0
  puts count
  count -= 1
end

# Output:
# 10
# 9
# 8
# 7
# 6
# 5
# 4
# 3
# 2
# 1


## Solution:
count = 1

until count > 10
  puts count
  count += 1
end

# Output:
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10
