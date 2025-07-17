# What will the following code print? Why?
def meal
  'Dinner'
  puts 'Dinner'
end

p meal

# Output:
# Dinner
# nil

=begin
The output is `'Dinner'`, `nil` on separate lines respectively.

On line 7, the call to `p meal` output `nil` (the return value 
from the method). The `p` method outputs the raw representation
of the value.

Lines 2-5 contain `meal` method definition. Line 3 (`'Dinner'`)
is executed. Line 4 is the last line executed and returns `nil`
implicitly. The `puts` method returns `nil`. So, the return value
from the method is `nil`. The `puts 'Dinner'` outputs `Dinner` 
to the console.

So, the output is `Dinner`, `nil`.
=end
