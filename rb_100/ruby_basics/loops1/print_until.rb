=begin
Given the array of several numbers below, use an until loop 
to print each number.

numbers = [7, 9, 13, 25, 18]

Expected output:
7
9
13
25
18
=end

numbers = [7, 9, 13, 25, 18]
index = 0

until numbers[index] == nil
  puts numbers[index]
  index += 1
end

# Output:
# 7
# 9
# 13
# 25
# 18



### Another possible solution:
numbers = [7, 9, 13, 25, 18]
index = 0

until index == numbers.size   # more descriptive of what is checking
  puts numbers[index]
  index += 1
end

# Output:
# 7
# 9
# 13
# 25
# 18

=begin
Iteration 1:
0 == 5      => false
output 7
index = 1

Iteration 2:
1 == 5      => false
output 9
index = 2

Iteration 3:
2 == 5      => false
output 13
index = 3

Iteration 4:
3 == 5     => false
output 25
index = 4

Iteration 5:
4 == 5    => false
output 18
index = 5

Iteration 6:
5 == 5   => true
break
=end
