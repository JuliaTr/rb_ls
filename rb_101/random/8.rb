# Explain the concept of truthiness in Ruby using the following code snippet.
if 0
  puts "zero is truthy"
else
  puts "zero is falsey"
end

if ""
  puts "empty string is truthy"
else
  puts "empty string is falsey"
end
# Output:
# zero is truthy
# empty string is truthy

=begin
Explanation:

In Ruby, everything is truthy except `false` and `nil`. It means that `true`
and any other objects except `false` and `nil` are truthy.

Lines 1-11 contain two `if` statements with `else` clauses.
On lines 1 and 7, the `if` statements are employed creating a conditional 
branchs in the execution. The conditions an Integer object `0` and a String 
object `""` are evaluated as true, or truthy values, in the `if`statement 
condition. 

In Ruby, when the expression is evaluated for truthiness, it is evaluated 
as a boolean expression. Compared to how other programming languages treat 
`0` and `""` differently, in Ruby `0` and `""` are considered truthy values. As they 
are neither `false` nor `nil`, the code inside the `if` clause is executed, 
outputting `zero is truthy`, and `empty string is truthy` to the console.

If the condition were `false` or `nil`, which are falsy values, the
code inside the `else` clause would be executed.

In Ruby, the `if` statement conditionals are always evaluated for truthiness.
It is possible to use `if name` to check if a variable has a truthy value.

It illustrates concepts of truthiness and control flow with an `if` statement.
=end

## Think whether I should add the explanation that Ruby is very liberal
# about what "true" means, as stated in the Launch School documents.  

