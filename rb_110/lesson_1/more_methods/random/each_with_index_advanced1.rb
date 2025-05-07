nested_array = [[1, 2], [3, 4, 5], [6]]
sum = 0

nested_array.each_with_index do |arr, idx|
  arr.each_with_index do |num, inner_idx|
    sum += num if idx < inner_idx
  end
end

p sum   # 7



### notes on `sum += num`:
sum = sum + num
2 = 0 + 2
7 = 2 + 5


### notes on iteration:
nested_array.each_with_index do |arr, idx|
  p "#{arr}: #{idx}"
end

p sum

# Ouput:
# "[1, 2]: 0"
# "[3, 4, 5]: 1"
# "[6]: 2"
# 0


nested_array.each_with_index do |arr, idx|
  arr.each_with_index do |num, inner_idx|
    p "#{num}: #{inner_idx}"
  end
end

p sum

# Output:
# "1: 0"
# "2: 1"
# "3: 0"
# "4: 1"
# "5: 2"
# "6: 0"
# 0
