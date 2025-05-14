# Exercise (basic)​: What will the following code output?
array = [1, 2, 3, 4, 5]
sum = 0

for num in array
  sum += num if num.odd?   # sum = sum + num
end

puts sum  # 9



# Exercise (intermediate)​: Predict the output of this nested loop structure.
outer_array = [1, 2, 3]
inner_array = ['a', 'b', 'c']

for i in outer_array     # [1, 2, 3]
  for j in inner_array   # ['a', 'b', 'c']
    puts "#{i}-#{j}"
    break if j == 'b'
  end
end

# Output:
# 1-a
# 1-b

# 2-a
# 2-b

# 3-a
# 3-b



# Exercise (​intermediate)​: What will the following code output?
hash = { a: 1, b: 2, c: 3, d: 4 }
result = []

for key, value in hash
  if value.even?
    result << key
  end
end

p result  # [:b, :d]



# Exercise (​advanced)​: Determine the output of this code that uses 
# a `for` loop with range modification:
range = (1..5)

for i in range
  p range
  puts i
  range = (1..3) if i == 2
  p range
end

# Output:
# 1..5
# 1
# 1..5

# 1..5
# 2
# 1..3

# 1..3
# 3
# 1..3

# 1..3
# 4
# 1..3

# 1..3
# 5
# 1..3
