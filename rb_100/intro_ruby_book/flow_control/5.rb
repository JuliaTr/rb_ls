# Why do you get this error and how can you fix it?
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

equal_to_four(5)

# Output: syntax error, unexpected end-of-input (SyntaxError)

=begin
Why do you get this error?

The SyntaxError occurred because the `end` keyword is missing 
in the `if` statement's syntax inside the `equal_to_four`
method definition on lines 2 - 7.
=end

# How can you fix it?
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)

# Output: nope

# Adding the `end` keyword at the end the `if` statement on line 27,
# closes the statement and resolves the syntax error.
