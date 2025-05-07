hash = { a: [1, 2, 3], b: [4, 5], c: [6, 7, 8, 9] }
result = []

hash.each_with_index do |(key, values), idx|
  values.each_with_index do |val, val_idx|
    result << val if val_idx == idx
  end
end

p result  # [1, 5, 8]



### notes on iteration:
hash.each_with_index do |(key, values), idx|
  p "#{key}: #{values} - #{idx}"
end

# Output:
# "a: [1, 2, 3] - 0"
# "b: [4, 5] - 1"
# "c: [6, 7, 8, 9] - 2"


hash.each_with_index do |(key, values), idx|
  values.each_with_index do |val, val_idx|
    p "#{val} - #{val_idx}"
  end
end

# Output:
# "1 - 0"
# "2 - 1"
# "3 - 2"

# "4 - 0"
# "5 - 1"

# "6 - 0"
# "7 - 1"
# "8 - 2"
# "9 - 3"
