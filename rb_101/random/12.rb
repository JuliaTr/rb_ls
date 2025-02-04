# Describe the difference between puts and p in Ruby. Provide an example 
# to illustrate your explanation.
=begin
Answer:
The `puts` method outputs each value on a new line to the console. 
It calls the `to_s` method on the object. It always returns `nil`.

The `p` method outputs the raw representation of an object, calling
the `inspect` method on self. `p` returns the object itself.

Example:
=end

def print_array
  array = [1, 2, 3]
  puts array
  array = [4, 5, 6]
end

p print_array
# Output:
# 1
# 2
# 3
# [4, 5, 6]

=begin
On line 7, the return value of the `print_array` method is passed as an argument
to the `p` invocation outputting `[4, 5, 6]` to the console.

Lines 1-5 contain a method definition. On line 2, a method's local variable 
`array` is initialized, references, and points to an Array object `[1, 2, 3]`.
On line 3, an object referenced by `array` is passed to the `puts` invocation, outputting 
each of `1 2 3` on a new line, respectively. On line 4, `[4, 5, 6]` is reassigned 
to `array`, which is the return value of the method.
=end