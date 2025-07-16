# What will the following code print? Why?

def meal
  return 'Breakfast'
end

puts meal   # Breakfast

=begin
The output is `Breakfast`.

On line 7, the `meal` method is invoked and its return value is 
passed as an argument to the `puts` method invocation.

Lines 3-5 contain `meal` method definition. Line 4 is the only 
line executed by the method definition. Also, the `return` key
word returns the value on the same line explicitly. So, the value `"Breakfast"`
is returned by `meal`. The `puts meal` call outputs `Breakfast` 
to the console.
=end
