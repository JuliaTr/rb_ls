=begin
Exercise:
1) Edit the method definition in exercise #4 so that it does 
print words on the screen. 2) What does it return now?
=end
def scream(words)
  words = words + "!!!!"
  return
  puts words
end

# scream("Yippeee")

# Answer:
# 1) Edit the method definition in exercise #4 so that it does 
# print words on the screen.
def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")   # Yippeee!!!!

=begin
The fixed code prints `Yippeee!!!` to the console. 

On line 18, the method's local variable `words` references the 
return value of `words + "!!!!"`, which is due to concatenation 
and reassignment, is `"Yippeee!!!!"`. On line 19, the object 
referenced by `words` is passed as an argument to the `puts` 
method invocation, outputting `Yippeee!!!!` to the console.

2) What does it return now?
The `scream` method still returns `nil`, because line 19 is 
the last line evaluated and executed in the method definition,
implicitly returning `puts`s return value `nil`.
=end
