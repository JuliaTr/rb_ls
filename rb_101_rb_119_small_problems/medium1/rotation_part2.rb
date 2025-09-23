=begin
Write a method that can rotate the last `n` digits of a number.
Note that rotating just 1 digit results in the original number 
being returned. You may use the `rotate_array` method from 
the previous exercise if you want. (Recommended!)

You may assume that `n` is always a positive integer.
=end

def rotate_array(array, digit_to_displace)
  array[0..-1] + [array[-digit_to_displace]]
end

def rotate_rightmost_digits(number, digit_to_displace)
  array = number.to_s.chars

  if digit_to_displace == 1
    number
  else
    array = rotate_array(array, digit_to_displace)
    array.delete_at(-digit_to_displace - 1)
    array.join.to_i
  end
end

p rotate_rightmost_digits(735291, 1) == 735291   # true
p rotate_rightmost_digits(735291, 2) == 735219   # true
p rotate_rightmost_digits(735291, 3) == 735912   # true
p rotate_rightmost_digits(735291, 4) == 732915   # true
p rotate_rightmost_digits(735291, 5) == 752913   # true
p rotate_rightmost_digits(735291, 6) == 352917   # true



## Possible solution:
def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291   # true
p rotate_rightmost_digits(735291, 2) == 735219   # true
p rotate_rightmost_digits(735291, 3) == 735912   # true
p rotate_rightmost_digits(735291, 4) == 732915   # true
p rotate_rightmost_digits(735291, 5) == 752913   # true
p rotate_rightmost_digits(735291, 6) == 352917   # true
