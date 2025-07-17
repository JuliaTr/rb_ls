# What will the following code print? Why?
def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal    # Breakfast

=begin
The output is `Breakfast`.

On line 8, the return value of `meal` method call is passed as
an argument to the `puts` method invocation outputting `Breakfast`
to the console.

Lines 2-6 contain a method definition. On line 3, the `return`
keyword immediately returns `"Breakfast"` from the method explicitly
and exits the method.

The `'Dinner'` (line 4), the `puts 'Dinner'` (line 5) isn't
executed.

That's why `Breakfast` is output.
=end
