# Is there a difference between `<<` and `+` operators?

=begin
There are several differences between these two methods:
- the object id of the value assigned to the local variable 'buffer' is being mutated by the `<<` method invocation after the 'rolling_buffer1' method execution;
- `rolling_buffer1` returns a reference to the object passed in as the buffer argument;
- `rolling_buffer2` method's invocation returns a new object with the different id;
- the invocation of the `#+` method in `rolling_buffer2` doesn't mutate the local variable `input_array` on line 31.
=end

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  p buffer.object_id        # 60
end

buffer = [1, 2, 3, 4, 5]
p buffer.object_id          # 60
max_buffer_size = 5
new_element = 6

p rolling_buffer1(buffer, max_buffer_size, new_element)       
# => [2, 3, 4, 5, 6]
p buffer
# => [2, 3, 4, 5, 6]


def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  p buffer.object_id        # 60
end

input_array = [1, 2, 3, 4, 5]
p input_array.object_id     # 80
max_buffer_size = 5
new_element = 6

p rolling_buffer2(input_array, max_buffer_size, new_element)
# => [2, 3, 4, 5, 6]
p input_array
# => [1, 2, 3, 4, 5]


