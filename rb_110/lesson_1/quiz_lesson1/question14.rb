arr = ['green', 'blue', 'red']
result = arr.map do |word|
  puts word
  word.upcase
end

p result
p arr

# Output:
# green
# blue
# red
# ["GREEN", "BLUE", "RED"]
# ["green", "blue", "red"]



## Experiments:
arr = ['green', 'blue', 'red']
result = arr.map do |word|
  puts word
  word.upcase!
end

p result
p arr

# Output:
# green
# blue
# red
# ["GREEN", "BLUE", "RED"]
# ["GREEN", "BLUE", "RED"]


arr = ['green', 'blue', 'red']
result = arr.map do |word|
  puts "Before: #{arr.inspect}"
  puts word
  word.upcase!
  puts "After: #{arr.inspect}"
end

p result
p arr

# Output:
# Before: ["green", "blue", "red"]
# green
# After: ["GREEN", "blue", "red"]

# Before: ["GREEN", "blue", "red"]
# blue
# After: ["GREEN", "BLUE", "red"]

# Before: ["GREEN", "BLUE", "red"]
# red
# After: ["GREEN", "BLUE", "RED"]

# [nil, nil, nil]
# ["GREEN", "BLUE", "RED"]


arr = ['green', 'blue', 'red']
result = arr.map do |word|
  word.upcase!
  puts word
  word
end

p result
p arr

# Output:
# GREEN
# BLUE
# RED
# ["GREEN", "BLUE", "RED"]
# ["GREEN", "BLUE", "RED"]


arr = ['green', 'blue', 'red']
arr.each do |word|
  puts "Before: #{arr.inspect}"
  word.upcase!
  puts "After: #{arr.inspect}"
end

p arr

# Output:
# Before: ["green", "blue", "red"]
# After: ["GREEN", "blue", "red"]

# Before: ["GREEN", "blue", "red"]
# After: ["GREEN", "BLUE", "red"]

# Before: ["GREEN", "BLUE", "red"]
# After: ["GREEN", "BLUE", "RED"]

# ["GREEN", "BLUE", "RED"]
