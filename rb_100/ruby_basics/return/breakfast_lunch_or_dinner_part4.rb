# What will the following code print? Why? 
def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal

# Output:
# Dinner
# Breakfast

=begin
The output is `Dinner`, `Breakfast` on a new line each of them 
separately.

On line 7, the return value of the `meal` method is passed as
an argument to the `puts` method invocation, outputting `Dinner`,
`Breakfast` to the console.

Lines 2-5 contain `meal` method definition. On line 3, `puts Dinner`
outputs `Dinner` when `meal` is invoked. On line 4, `"Breakfast"` is
returned from the method explicitly due to `return` keyword, and 
output it to the console.

That's why `Dinner` and `Breakfast` is the output.
=end