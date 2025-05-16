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
  puts "Before: #{arr.inspect}"
  puts word
  word.upcase
  puts "After: #{arr.inspect}"
end

p result
p arr

# Output:
# Before: ["green", "blue", "red"]
# green
# After: ["green", "blue", "red"]

# Before: ["green", "blue", "red"]
# blue
# After: ["green", "blue", "red"]

# Before: ["green", "blue", "red"]
# red
# After: ["green", "blue", "red"]

# [nil, nil, nil]
# ["green", "blue", "red"]


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


numbers = [1, 2, 3, 4, 5]
counter = 0

numbers.each_with_index do |number, idx|
  puts "Iteration #{counter += 1}"
  puts "Before mutation: #{numbers.inspect}"
  p number
  p numbers[number - 1]  # 1 - 1 = 0; numbers[0] is `1` 
  numbers[number - 1] *= 10 if number < 4
  p number
  puts "After mutation: #{numbers.inspect}"
  puts "Current element being processed: #{number}"
  puts "---"
  break if idx == 0
end

puts "Final array: #{numbers.inspect}"

# Output:
# Iteration 1
# Before mutation: [1, 2, 3, 4, 5]
# 1
# 1
# 1
# After mutation: [10, 2, 3, 4, 5]
# Current element being processed: 1
# ---
# Final array: [10, 2, 3, 4, 5]


numbers = [0, 2, 3, 4, 5]
counter = 0

numbers.each_with_index do |number, idx|
  puts "Iteration #{counter += 1}"
  puts "Before mutation: #{numbers.inspect}"
  p number
  p numbers[number - 1]  # 0 - 1 = -1; numbers[-1] is `5` 
  numbers[number - 1] *= 10 if number < 4
  p number
  puts "After mutation: #{numbers.inspect}"
  puts "Current element being processed: #{number}"
  puts "---"
  break if idx == 0
end

puts "Final array: #{numbers.inspect}"

# Output:
# Iteration 1
# Before mutation: [0, 2, 3, 4, 5]
# 0
# 5
# 0
# After mutation: [0, 2, 3, 4, 5]
# Current element being processed: 0
# ---
# Final array: [0, 2, 3, 4, 5]


numbers = [1, 2, 3, 4, 5]
counter = 0

numbers.each do |number|
  puts "Iteration #{counter += 1}"
  puts "Before mutation: #{numbers.inspect}"
  numbers[number - 1] *= 10 if number < 4
  puts "After mutation: #{numbers.inspect}"
  puts "Current element being processed: #{number}"
  puts "---"
end

puts "Final array: #{numbers.inspect}"

# Output:
# Iteration 1
# Before mutation: [1, 2, 3, 4, 5]
# After mutation: [10, 2, 3, 4, 5]
# Current element being processed: 1
# ---
# Final array: [10, 2, 3, 4, 5]

# Iteration 2
# Before mutation: [10, 2, 3, 4, 5]
# After mutation: [10, 20, 3, 4, 5]
# Current element being processed: 2
# ---

# Iteration 3
# Before mutation: [10, 20, 3, 4, 5]
# After mutation: [10, 20, 30, 4, 5]
# Current element being processed: 3
# ---

# Iteration 4
# Before mutation: [10, 20, 30, 4, 5]
# After mutation: [10, 20, 30, 4, 5]
# Current element being processed: 4
# ---

# Iteration 5
# Before mutation: [10, 20, 30, 4, 5]
# After mutation: [10, 20, 30, 4, 5]
# Current element being processed: 5
# ---
# Final array: [10, 20, 30, 4, 5]


numbers = [1, 2, 3, 4, 5]
counter = 0
p numbers[counter - 1] # 5


numbers = [1, 2, 3, 4, 5]
counter = 0

numbers.map do |number|
  puts "Iteration #{counter += 1}"
  puts "Before mutation: #{numbers.inspect}"
  numbers[number - 1] *= 10 if number < 4
  puts "After mutation: #{numbers.inspect}"
  puts "Current element being processed: #{number}"
  puts "---"
end

puts "Final array: #{numbers.inspect}"

# Output:
# Iteration 1
# Before mutation: [1, 2, 3, 4, 5]
# After mutation: [10, 2, 3, 4, 5]
# Current element being processed: 1
# ---
# Final array: [10, 2, 3, 4, 5]

# Iteration 2
# Before mutation: [10, 2, 3, 4, 5]
# After mutation: [10, 20, 3, 4, 5]
# Current element being processed: 2
# ---

# Iteration 3
# Before mutation: [10, 20, 3, 4, 5]
# After mutation: [10, 20, 30, 4, 5]
# Current element being processed: 3
# ---

# Iteration 4
# Before mutation: [10, 20, 30, 4, 5]
# After mutation: [10, 20, 30, 4, 5]
# Current element being processed: 4
# ---

# Iteration 5
# Before mutation: [10, 20, 30, 4, 5]
# After mutation: [10, 20, 30, 4, 5]
# Current element being processed: 5
# ---
# Final array: [10, 20, 30, 4, 5]
