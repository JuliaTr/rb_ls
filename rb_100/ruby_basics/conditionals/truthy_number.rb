# What will the following code print? Why?

number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end

# Output: My favorite number is 7.

=begin
The output is `My favorite number is 7.`

On line 3, a local variable `number` is initialized and references
an Integer object with a value of `7`.

lines 5-9 contain an `if/else` statement. On line 5, the `if` 
condition is truthy, because `number` references `7` (truthy).
In Ruby everyhting is truthy including `''` and `0`, except `false`
and `nil`. 

If `if` condition is truthy the branch is executed. So, that's why
the output is `My favorite number is 7.` 

`else` clause wasn't executed, because `7` is always truthy.
=end
