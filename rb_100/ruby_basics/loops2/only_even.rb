# Using `next`, modify the code below so that it only prints 
# positive integers that are even.
number = 0

until number == 10
  number += 1
  puts number
end

# Output:
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10



### Possible solution:
number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

# Output:
# 2
# 4
# 6
# 8
# 10

=begin
Iteration 1:
0 == 10    => false
number = 1
1.odd?     => true
skip the rest code in this iteration

Iteration 2:
1 == 10    => false
number = 2
2.odd?     => false
output 2

Iteration 3:
2 == 10    => false
number = 3
3.odd?     => true
skip the rest code in this iteration

Iteration 4:
3 == 10    => false
number = 4
4.odd?     => false
output 4

Iteration 5:
4 == 10   => false
number = 5
5.odd?    => true
skip the rest code in this iteration

Iteration 6:
5 == 10   => false
number = 6
6.odd?    => false
output 6

Iteration 7:
6 == 10   => false
number = 7
7.odd?    => true
output 7
skip the rest code in this iteration

Iteration 8:
7 == 10   => false
number = 8
8.odd?    => false
output 8

Iteration 9:
8 == 10  => false
number = 9
9.odd?   => true
skip the rest code in this iteration

Iteration 10:
9 == 10  => false
number = 10
10.odd?  => false
output 10
=end


### Solution (output starts from 0 - neither positive nor negative):
number = 0

until number > 10
  if number.odd?
    number += 1
    next
  end

  puts number
  number += 1
end

# Output:
# 0
# 2
# 4
# 6
# 8
# 10



### Refactored experiment (without `next`):
number = 0

until number > 10
  if number.even?
    puts number
    number += 1
  end
  
  number += 1
end

# Output:
# 0
# 2
# 4
# 6
# 8
# 10



### Experiments (without `next`):
number = 0

until number > 10
  if number.even?
    puts number
    number += 1
  else
    number += 1
  end
end

# Output:
# 0
# 2
# 4
# 6
# 8
# 10
