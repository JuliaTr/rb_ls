# Exercise (basic):
['a', 'b', 'c'].each_with_index do |letter, index|
  puts "#{index}: #{letter}"
end

# Output:
# 0: a
# 1: b
# 2: c



# Exercise (intermediate):
total = 0

[1, 2, 3, 4, 5].each_with_index do |num, idx|
  total += num * idx  # total = total + (num * idx)
end

puts total

# notes on iteration:
# 0 = 0 + (1 * 0)
# 2 = 0 + (2 * 1)
# 8 = 2 + (3 * 2)
# 20 = 8 + (4 * 3)
# 40 = 20 + (5 * 4)

# Output: 40


