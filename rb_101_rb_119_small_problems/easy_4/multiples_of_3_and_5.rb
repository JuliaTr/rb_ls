=begin
Write a method that searches for all multiples of 3 or 5 that 
lie between 1 and some other number, and then computes the 
sum of those multiples. For instance, if the supplied number 
is 20, the result should be 98 
(3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater 
than 1.

______________________________________________________________

PEDAC


5: 
(5 % 3 != 0 (x)   5 % 5 == 0)  
[5]
5 - 1 = 4
(4 % 3 != 0 (x)   4 % 5 != 0 (x))
[5]
4 - 1 = 3
(3 % 3 == 0       3 % 5 != 0 (x))
[5, 3]
3 - 1 = 2
(2 % 3 != 0 (x)   2 % 5 != 0 (x))
[5, 3]
2 - 1 = 1
(1 % 3 != 0 (x)   1 % 5 != 0 (x))


Algorithm:
- Initialize an empty array
- If number is 3
  - push 3 array
- If number is > 3 and evenly divisible by 5
  - 5 * 1
  - 5 * 2
  - push each product to the array
  - and so on until the product is number
  - take one number less until find divisible by 3
  - 3 * 1
  - 3 * 2
  - push each product to the array
  - and so on until the product is number
- sort array
- calculate sum of integers in the array
=end

def multisum(num)
  array = []

  while num > 1
    array << num if num % 3 == 0 || num % 5 == 0
    num -= 1
  end

  array.sum
end

p multisum(3) == 3           # true
p multisum(5) == 8           # true
p multisum(10) == 33         # true
p multisum(1000) == 234168   # true



## Possible solution
def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0

  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end

  sum
end

p multisum(3) == 3           # true
p multisum(5) == 8           # true
p multisum(10) == 33         # true
p multisum(1000) == 234168   # true



## Alternatives with further exploration:
def multisum(num)
  sum = (1..num).select do |current_num|
    current_num % 3 == 0 || current_num % 5 == 0
  end

  sum.inject(:+)
end

p multisum(3) == 3           # true
p multisum(5) == 8           # true
p multisum(10) == 33         # true
p multisum(1000) == 234168   # true



