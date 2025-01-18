=begin
Exercise:
Add another section onto `name.rb` that prints the name of the 
user 10 times. You must do this without explicitly writing 
the puts method 10 times in a row. Hint: you can use the 
times method to do something repeatedly.
=end

# Solution:
# name.rb
puts "What's your name?"
name = gets.chomp

10.times { puts name }

=begin
$ ruby 3.rb
What's your name?
Yuliia
Yuliia
Yuliia
Yuliia
Yuliia
Yuliia
Yuliia
Yuliia
Yuliia
Yuliia
Yuliia
=end

=begin
Description:
On line 10, a String object with a value of `"What's your name?"`
is passed as an argument to the `puts` method, outputting a prompt
`What's your name?` to the console. On line 11, a local variable
`name` is initialized and references a return value of `gets.chomp`
methods invocations.

The `gets` method stands for "get string". It gets the user's 
input, returning a string, adding a "newline" character (`\n`) 
to it.

The `chomp` method, chained with `gets`, is invoked on the 
return value of `gets`. The `chomp` method eliminates the trailing
`\n`, returning a string by `gets` without it.

On line 13, a block, enclosed in `{}`, is passed as an argument
to the `times` method invoked on an Integer object with a value
of `10`. 

Inside the block, on each iteration, the object referenced by 
`name` is passed as an argument to the `puts` method invocation, 
outputting the user's input 10 times to the console.

The `times` method returns the integer it is invoked on, which
is `10` here. The `puts` method returns `nil`. However, their return
values are not used here.
=end
