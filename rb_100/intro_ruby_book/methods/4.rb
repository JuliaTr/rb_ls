=begin
Exercise:
What will the following code print to the screen?
=end

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yipeee")

=begin
Answer:
Nothing will be print to the screen. This is because on line 8,
in the body of the `scream` method definition, there's the `return`
keyword on line 8, after which the evaluation of expressions 
stops, line 8 returns `nil` explicitly from the method in this case, and 
the program immediately exits the method. So, the 
expression `puts words`, on line 9, will never be evaluated 
and executed in this case. The return value of `words` on 
line 9 will never be output.
=end