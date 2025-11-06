=begin
The `valid_series?` method checks whether a series of numbers 
is valid. For the purposes of this exercise, a valid series of 
numbers must contain exactly three odd numbers. Additionally, 
the numbers in the series must sum to 47.

Unfortunately, our last test case is not returning the expected 
result. Why is that?
=end

def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count = 3 ? true : false
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8]) == true  # should return true
p valid_series?([1, 12, 2, 5, 16, 6]) == false      # should return false
p valid_series?([28, 3, 4, 7, 9, 14]) == false      # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3]) == true  # should return true
# p valid_series?([10, 6, 19, 2, 6, 4]) == false      # should return false

=begin
**Why is that?**

On line 15, there's a ternary operator. The `=` is an assignment operator,
which assigns `3` to `odd_count`. `3` is a truthy value. So `true` will
always be returned.

In order to return `true` or `false`, we need to use equality comparison 
operator (`==`) to check if a value of `odd_count` is `3`.
=end



## Bug fix
# Option 1:
def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8]) == true  # should return true
p valid_series?([1, 12, 2, 5, 16, 6]) == false      # should return false
p valid_series?([28, 3, 4, 7, 9, 14]) == false      # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3]) == true  # should return true
p valid_series?([10, 6, 19, 2, 6, 4]) == false      # should return false


# Option 2:
def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8]) == true  # should return true
p valid_series?([1, 12, 2, 5, 16, 6]) == false      # should return false
p valid_series?([28, 3, 4, 7, 9, 14]) == false      # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3]) == true  # should return true
p valid_series?([10, 6, 19, 2, 6, 4]) == false      # should return false
