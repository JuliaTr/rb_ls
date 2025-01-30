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
