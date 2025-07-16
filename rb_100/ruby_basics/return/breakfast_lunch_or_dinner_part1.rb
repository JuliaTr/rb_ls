# What will the following code print? Why?

def meal
  return 'Breakfast'
end

puts meal   # Breakfast

=begin
The output is `Breakfast`.

On line 7, the `meal` method is invoked and passed as an argument
to the `puts` method.

Lines 3-5 contain `meal` method definition. Line 4 is the only 
line executed by the mehod definition. Also, the `return` key
word returns the value on the same line. So, the value `Breakfast`
is returned by `meal`.
=end
