# (recorded) review 
# took 15 mins

=begin
Numerical palindrome:
A palinrome is a word,phrase, number, or other sequence of
characters  which reads the same backward as forward. Examples
of numerical palindromes are:

2332
110011
54322345

You'll be given 2 numbers as arguments: (num, s). Write a 
functions which return an array of `s` number of numerical 
palindromes that come after `num`. If `num` is a palindrome
itself, it should be included in the count.

Single digit numbers will NOT be considered numerical palindromes.

_________________________________________

High-level:
- Start from `num` and check each next number incremented by 1
if it's a palindrome. If yes, add it to a new array. Stop checking
when array length is the same as `s`. 

loop
- If `num` is palindrome
  - push to array
- Break if array has `s` number of integers

=end

## More readable:
def is_palindrome?(int)
  int > 9 && int.to_s == int.to_s.reverse
end

def palindrome(num, s)
  arr = []
  current_num = num

  loop do
    arr << current_num if is_palindrome?(current_num)
    break if arr.size == s
    current_num += 1 
  end

  arr
end

p palindrome(6, 4) == [11, 22, 33, 44]
p palindrome(75, 1) == [77]
p palindrome(101, 2) == [101, 111]
p palindrome(20, 0) == []
p palindrome(0, 4) == [11, 22, 33, 44]
# All test cases return `true`



## Solution:
def palindrome(num, s)
  arr = []

  loop do
    number_arr = num.digits.reverse
    if number_arr.size >= 2 && number_arr == num.digits
      arr << num
    end

    break if arr.size == s

    num += 1
  end

  arr
end

p palindrome(6, 4) == [11, 22, 33, 44]
p palindrome(75, 1) == [77]
p palindrome(101, 2) == [101, 111]
p palindrome(20, 0) == []
p palindrome(0, 4) == [11, 22, 33, 44]
# All test cases return `true`
