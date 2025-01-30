# What will each block of code below print to the screen?

# Snippet 1:
'4' == 4 ? puts("TRUE") : puts("FALSE")

# Output: FALSE

=begin
Snippet 1 prints `FALSE`.

On line 4, there's a ternary expression. If the condition before
the `?` symbol evaluates to true, the code to the left of the 
`:` symbol is executed. If this condition evaluates to false, 
the code to the right of the `:` is executed. 

`'4' == 4` evaluates to false because a String object `'4'` is
not the same type as an Integer object `4`. So, they are not 
equal. That's why `puts("FALSE")` is executed and outputs `FALSE`
to the console.
=end

=begin
More consise version:

`'4' == 4` evaluates to false because a String object `'4'` is
not the same type as an Integer object `4`. So, they are not 
equal. That's why the ternary operator executes the false
branch where `puts("FALSE")`is called, executed and outputs 
`FALSE` to the console.
=end



# Snippet 2:
x = 2

if ((x * 3) / 2) == (4 + 4 - x - 3)  # 3 == 3  # true
  puts "Did you get it right?"
else
  puts "Did you?"
end

# Output: Did you get it right?

=begin
Snippet 2 prints `Did you get it right?`.

On line 1 a local variable `x` is initialized and references
an Integer object with a value of `2`.

On lines 3 - 7, there's an `if/else` statement. If the condition,
on line 3, is truthy, the code block inside the `if` branch
is executed, otherwise the `else` clause is executed.

The conditional comparison expression `((x * 3) / 2) == (4 + 4 - x - 3)`
is evaluated to a boolean `true` value, which is truthy, as it 
evaluates to `3` and `3` in two sides of the `==` operator, 
which are equal in type and value. So, the call to 
`puts "Did you get it right?"` is executed, outputting
`Did you get it right?` to the console.
=end


# Snippet 3:
y = 9
x = 10

if (x + 1) <= (y)         # false
  puts "Alright."
elsif (x + 1) >= (y)      # true
  puts "Alright now!"     # executes
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end

# Output: Alright now!

=begin
Snippet 3 prints `Alright now!`.

On lines 1 - 2, two local variables are initialized and reference
two Integer objects `9` and `10`, respectively.

On lines 4 - 12, in the `if/elsif/else` statement, Ruby evaluates 
every condition from the top. The first conditonal comparison 
expression `(x + 1) <= (y)` evaluates to a boolean `false` 
value, which is falsy. The next `(x + 1) >= (y)` evaluates 
to a boolean `true` value, which is truthy. So, the code block 
inside this `elsif` branch is executed, outputing `Alright now!`
to the console.

It demonstrates the truthines concept, particularly in the
`if/elsif/else` statement.
=end

=begin
Concise version:

Snippet 3 prints `Alright now!`.

On lines 1 - 2, two local variables are initialized and reference
two Integer objects `9` and `10`, respectively.

On lines 4 - 12, in the `if/elsif/else` statement, the second 
condition (first `elsif`), `(x + 1) >= (y)`, which 
is (`11 >= (9)`), evaluates to a boolean `true` value, which 
is the first truthy value. So, `puts "Alright now!"` is executed.
=end
