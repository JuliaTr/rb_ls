# What will the following code print? Why?
def meal
  return 'Breakfast'
  'Dinner'
end

puts meal  # Breakfast

=begin
The output is `Breakfast`.

On line 7, the return value of the `meal` method invocation is
passed as an argument to the `puts` method call outputting 
`Breakfast` to the console. 

lines 2-5 contain `meal` method definition. On line 3, the
`return` keyword returns `"Breakfast"` from the method explicitly. 
Line 4, although, is the last line in the method, but it isn't 
executed due to `return` on line 2. So, that's why `Breakfast` 
is output.
=end
