# need to review

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

## Improved logic
def combinations(num)
  arr = num.to_s.chars
  combinations = arr.permutation(arr.size).map do |permutation| 
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
