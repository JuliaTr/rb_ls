=begin
Exercise:
What will the following code print to the screen?
=end

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

=begin
Option 1:

Answer:
Nothing will be printed to the screen. 

On line 12, the String object with a value of `"Yippee"` is 
passed to the `scream` method invocation on line 12. 

In the method definition, which is on lines 6 - 10, on line 
7, the `+` method invoked on the object referenced by `words`,
which is the method's parameter and a local variable to it, 
concatenated `"!!!!"` to `"Yippeee"`. `words` is reassigned 
to the return value of `words + "!!!!"`. The object referenced
by `words` isn't returned or output due to the `return` keyword
on line 8.

On line 8, there's the `return` keyword, after which the 
evaluation of expressions stops. `return` returns `nil` 
explicitly from the method. The program immediately exits the 
method. So, the expression `puts words`, on line 9, will never 
be evaluated and executed in this case. The return value of 
`words` on line 9 will never be output.

It demonstrates the output vs. return concept, particularly regarding 
the `return` keyword used for the explicit return from the method
definition.


Option 2:

Answer:
Nothing will be printed to the screen. This is because on 
line 8, in the body of the `scream` method definition, 
there’s the `return` keyword, after which the evaluation of 
expressions stops. So, the expression `puts words`, on line 
9 will never be evaluated, executed, and output due to the 
`return` keyword.
=end



# Experiments:
def scream(words)
  words = words + "!!!!"
  puts words
end

p scream("Yippeee")

# The `scream` method returns `nil` in this case.


def scream(words)
  words = words + "!!!!"
  return
end

p scream("Yippeee")    # nil

# The `return` keyword returns `nil`.
