=begin
Write a method that takes an integer as argument, and returns 
the maximum rotation of that argument. You can (and probably 
should) use the rotate_rightmost_digits method from the previous 
exercise.

Note that you do not have to handle multiple 0s.
=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

# # Option 1:
# # `while` loop:
# def max_rotation(number)
#   n = number.to_s.length

#   while n > 1  # including 2 (we rotate the second from right number)
#     number = rotate_rightmost_digits(number, n)
#     n -= 1
#   end
# end

# # Option 2:
# # `while` loop:
# def max_rotation(number)
#   n = number.to_s.length

#   while n >= 2
#     number = rotate_rightmost_digits(number, n)
#     n -= 1
#   end

#   number
# end

# Option 3:
# Possible solution:
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
# All  test cases return `true`.
