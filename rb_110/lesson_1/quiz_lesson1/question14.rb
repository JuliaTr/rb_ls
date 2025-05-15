result = ['green', 'blue', 'red'].map do |word|
  puts word
  word.upcase
end

p result

# Output:
# green
# blue
# red
# ["GREEN", "BLUE", "RED"]



## Experiments:
result = ['green', 'blue', 'red'].map do |word|
  puts word
  word.upcase!
end

p result

# Output:
# green
# blue
# red
# ["GREEN", "BLUE", "RED"]


result = ['green', 'blue', 'red'].map do |word|
  word.upcase!
  puts word
  word
end

p result

# Output:
# GREEN
# BLUE
# RED
# ["GREEN", "BLUE", "RED"]
