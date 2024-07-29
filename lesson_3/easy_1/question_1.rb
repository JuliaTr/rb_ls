# What the code below will print out?
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
# Output:
# 1
# 2
# 2
# 3

=begin
On line 2, the 'Array#uniq' method is invoked on 'numbers' returning a new `Array` object with the uniq elements.
However, the `#uniq` method is not destructive and it didn't modify the `numbers` object.
When `numbers` are passed as arguments to the `#puts` method invocation, in addition to calling 'to_s' on its argument, the output is each element of the `numbers` on a new line. 
=end

