=begin
The method below counts from 0 to 4. Modify the block so 
that it prints the current number and stops iterating when 
the current number equals `2`.
=end
5.times do |index|
  puts index
end


## Solution:
5.times do |index|
  puts index
  break if index == 2
end

# Output:
# 0
# 1
# 2



### Further exploration:
# How many values will be printed? -> 5 values
5.times do |index|
  puts index
  break if index == 4
end

# Output
# 0
# 1
# 2
# 3
# 4



# How many values will be printed? -> 1 value
5.times do |index|
  puts index
  break if index < 7   # 0 < 7   => true
end

# Output: 0
