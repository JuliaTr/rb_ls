# Write a loop that prints numbers 1-5 and whether the 
# number is even or odd. Use the code below to get started.

## Refactored:
count = 1

loop do
  puts "#{count} is odd!" if count.odd?
  puts "#{count} is even!" if count.even?

  count += 1
  break if count > 5
end

# Output:
# 1 is odd!
# 2 is even!
# 3 is odd!
# 4 is even!
# 5 is odd!



## Solution:
count = 1

loop do
  if count.odd?
    puts "#{count} is odd!"
    count += 1
  else
    puts "#{count} is even!"
    count += 1
  end
  
  break if count > 5
end

# Output:
# 1 is odd!
# 2 is even!
# 3 is odd!
# 4 is even!
# 5 is odd!



### Possible solution:
count = 1

loop do
  if count.even?
    puts "#{count} is even!"
  else
    puts "#{count} is odd!"
  end

  break if count == 5
  count += 1
end

# Output:
# 1 is odd!
# 2 is even!
# 3 is odd!
# 4 is even!
# 5 is odd!
