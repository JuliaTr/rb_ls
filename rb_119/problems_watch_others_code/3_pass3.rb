=begin
PROBLEM
Create a method that takes a positive integer number and
returns the next bigger number formed by the same digits.

12 ==> 21
513 ==> 531
2017 ==> 2071
If no bigger number can be composed using these digits, return -1

9 ==> -1
111 ==> -1
531 ==> -1

_____________________________


! returns the next bigger number formed by the same digits

513 ==> 531
[513, 315, 531, 135, 153] -> 531

531 ==> -1
[531, 351, 135, 153]  -> 531

Rules:
- 1 digit -> -1
- same digits -> -1
- no greater number ? -> -1

Idea1:
Find all possible combinations 
`#permutation`
513 to_s chars
["5", "1", "3"]

! returns the next bigger number formed by the same digits

Return combination[1]

Loop over combinations and find difference between combination and input () ---

Find maximum  ---
Compare maximum with input ---
If maximum is greater, return maximum
If not, return -1


- 1 digit -> -1
- same digits -> -1
=end

## Simplified logic:
def combinations(num)
  arr = num.to_s.chars
  arr.permutation(arr.size).map do |permutation| 
    permutation.join.to_i
  end
end

# `#find`
def next_bigger_num(num)
  return -1 if num.to_s.size == 1 || num.digits.uniq.size == 1
  
  # Remove duplicates from combinations. Sort
  sorted_combinations = combinations(num).uniq.sort

  # Find the first number in the sorted array that is greater than `num`
  next_num = sorted_combinations.find { |item| item > num }

  # `#find` returns `nil` if nothing found
  next_num || -1
end

p next_bigger_num(132) == 213

p next_bigger_num(9) == -1 
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
# All test cases return `true`



## Improved logic
def combinations(num)
  arr = num.to_s.chars
  arr.permutation(arr.size).map do |permutation| 
    permutation.join.to_i
  end
end

def next_bigger_num(num)
  return -1 if num.to_s.size == 1

  combinations = combinations(num)
  sorted = combinations.sort

  (0...sorted.size).each do |idx|
    if sorted[idx] == num && !sorted[idx + 1].nil? && 
        sorted[idx + 1] > num
      return sorted[idx + 1]
    end
  end

  -1
end

p next_bigger_num(132) == 213

p next_bigger_num(9) == -1 
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
# All test cases return `true`



## Solution:
def combinations(num)
  arr = num.to_s.chars
  combinations = arr.permutation(arr.size).map do |permutation| 
    permutation.join.to_i
  end
end

def next_bigger_num(num)
  return -1 if num.to_s.size == 1
  combinations = combinations(num)
  combinations[1] > num ? combinations[1] : -1
end

p next_bigger_num(9) == -1 
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
# All test cases return `true`



## Alternative:
=begin
Thoughts:
- digits in input and output are the same
- if they are sorted, they are in arrays in the same order
- so to find the next bigger number (consists of the same 
  digits) should start from the next number and till the maximum
  (sorted and reversed)
- input sorted number and number sorted in the iteration should 
  be the same
=end

def sorted_digits(int)
  int.to_s.chars.sort
end

def next_bigger_num(input)
  max_number = sorted_digits(input).reverse.join.to_i

  # p input
  (input + 1..max_number).each do |num|
    # p num
    # p sorted_digits(num)
    # p sorted_digits(input)
    return num if sorted_digits(num) == sorted_digits(input)
  end

  -1
end

p next_bigger_num(132) == 213

p next_bigger_num(9) == -1 
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
=begin
$ ruby 3_pass3.rb
513
514
["1", "4", "5"]
["1", "3", "5"]
515
["1", "5", "5"]
["1", "3", "5"]
516
["1", "5", "6"]
["1", "3", "5"]
517
["1", "5", "7"]
["1", "3", "5"]
518
["1", "5", "8"]
["1", "3", "5"]
519
["1", "5", "9"]
["1", "3", "5"]
520
["0", "2", "5"]
["1", "3", "5"]
521
["1", "2", "5"]
["1", "3", "5"]
522
["2", "2", "5"]
["1", "3", "5"]
523
["2", "3", "5"]
["1", "3", "5"]
524
["2", "4", "5"]
["1", "3", "5"]
525
["2", "5", "5"]
["1", "3", "5"]
526
["2", "5", "6"]
["1", "3", "5"]
527
["2", "5", "7"]
["1", "3", "5"]
528
["2", "5", "8"]
["1", "3", "5"]
529
["2", "5", "9"]
["1", "3", "5"]
530
["0", "3", "5"]
["1", "3", "5"]
531
["1", "3", "5"]
["1", "3", "5"]
531
=end

p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
# All test cases return `true`
