=begin
Write a method that can rotate the last `n` digits of a number.
Note that rotating just 1 digit results in the original number 
being returned.

You may use the `rotate_array` method from the previous exercise if you want. (Recommended!)

You may assume that `n` is always a positive integer.

____________________________________

eg. 735291
    arr[-n..-1]
    [9, 1]

    arr[1..-1] + [arr[0]]
    [1, 9]
=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(number, n)
  arr = number.to_s.chars.map(&:to_i)
  # p arr[-n..-1] 
  arr[-n..-1] = rotate_array(arr[-n..-1])  # reassignment
  # p arr[-n..-1]
  # p arr
  arr.map(&:to_s).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
=begin
[9, 1]
[1, 9]
[7, 3, 5, 2, 1, 9]
=end

p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
# all test cases return `true`.



## Possible solution:
# No need to use `map`; do all manipulations on strings:
def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
# All test cases return `true`.



# Convert number to array of numbers (alternative):
def rotate_rightmost_digits(number)
  number.digits.reverse
end

p rotate_rightmost_digits(735291)   # [7, 3, 5, 2, 9, 1]
