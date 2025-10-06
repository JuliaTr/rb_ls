=begin
Write a method that takes an integer as argument, and returns 
the maximum rotation of that argument. You can (and probably 
should) use the `rotate_rightmost_digits` method from the previous 
exercise.

Note that you do not have to handle multiple 0s.

____________________________________________________________

735291: (has 6 digits)
Result of rotation 1: 352917   (`7` was rotated)
Result of rotation 2: 3_29175  (`3` is fixed) (`5` was rotated)
Result of rotation 3: 32_1759  (`32` is fixed) (`9` was rotated)
Result of rotation 4: 321_597  (`321` is fixed) (`7` was rotated)
Result of rotation 5: 3215_79  (`3215` is fixed) (`9` was rotated)

=end
def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(number)
  n = number.to_s.length

  while n > 1
    number = rotate_rightmost_digits(number, n)
    n -= 1
  end

  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
# All test cases return `true`



## Possible solution:
def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(number)
  number_digits = number.to_s.size

  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end

  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
# All test cases return `true`
