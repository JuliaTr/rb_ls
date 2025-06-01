## Example 1:
result =  [[1, 2], [3, 4]].each do |arr|
            puts arr.first
          end

p result

# Output:
# 1
# 3
# [[1, 2], [3, 4]]




## Example 2:
result =  [[1, 2], [3, 4]].map do |arr|
            puts arr.first
          end

p result

# Output:
# 1
# 3
# [nil, nil]




## Example 3:
result =  [[1, 2], [3, 4]].map do |arr|
            puts arr.first
            arr.first
          end

p result 

# Output:
# 1
# 3
# [1, 3]
