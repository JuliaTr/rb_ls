# What errors does it raise for the given examples and what 
# exactly do the error messages mean?

def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

find_first_nonzero_among(0, 0, 1, 0, 2, 0)
find_first_nonzero_among(1)

=begin
Line 10 ouputs:
reading_error_messages.rb:4:in `find_first_nonzero_among': 
wrong number of arguments (given 6, expected 1) 
(ArgumentError)

`ArgumenError` message is output, because on line 10 there're 6
integers passed as arguments to the `find_first_nonzero_among`
method. However, the method definition takes only one parameter
`numbers` (line 4).

If we comment out line 11, it outputs:
reading_error_messages.rb:5:in `find_first_nonzero_among': 
undefined method `each' for 1:Integer (NoMethodError)

An Integer object with a value of `1` is passed as an argument
to the `find_first_nonzero_among` metthod invocation.

Also, in the method's body, on line 5, the `each` mehod is invoked
on `numbers`, which is expected to reference an array. There's no
`each` method to be invoked on integers. So, arguments
passed to `find_first_nonzero_among' (lines 10, 11) should be 
arrays of integers.
=end



## Bug fix:
def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

p find_first_nonzero_among([0, 0, 1, 0, 2, 0])  # 1
p find_first_nonzero_among([1])                 # 1
