# What will the following code print? Why?
def meal
  'Evening'
end

puts meal   # Evening

=begin
The output is `Evening`.

On line 6, the return value of `meal` method invocation (`"Evening"`) 
is passed as an argument to the `puts` method invocation.

Lines 2-4 contain `meal` method definition. On line 3, "Evening"
is returned from the method implicitly, because it's the only 
line executed. 

So, `Evening` is output to the console.
=end
