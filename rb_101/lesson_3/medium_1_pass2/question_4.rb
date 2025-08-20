=begin
Elements are added to the rolling buffer and if the buffer becomes
full, then new element that are added will displace the oldest
elements in the buffer.

Is there a difference between the two, other than what operator 
is chosen to use to concatenate an element to the buffer?
=end

# Example 1:
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

arr = [1, 2, 3]
p rolling_buffer1(arr, 3, 4)  # [2, 3, 4]
p arr                         # [2, 3, 4]


# Example 2:
def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

arr = [1, 2, 3]
p rolling_buffer2(arr, 3, 4)    # [2, 3, 4]
p arr                           # [1, 2, 3]

=begin
Two examples return the same value

In the Example 1, on line 12, the `Array#<<` mutates in place the 
original object referenced by `arr` in the outer scope. Here,
Ruby behaves as if "pass-by-reference". This solution has a side
(mutation of original object), while returning a meaninful value.

In the Example 2, on line 24, the `Array#+` returns a new object,
which is assigned to a new initialized variable `buffer`. The 
`#+` doesn't mutate the original object in the outer scope.
Here, Ruby behaves as if "pass-by-value". This solution doesn't
mutate the original object, but returns a new mutated object.
=end
