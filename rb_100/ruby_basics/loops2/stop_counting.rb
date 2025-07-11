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
