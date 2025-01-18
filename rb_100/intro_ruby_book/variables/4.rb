=begin
Exercise:
Modify `name.rb` again so that it first asks the user for 
their first name, saves it into a variable, and then does 
the same for the last name. Then outputs their full name all
at once.
=end

# Solution:
# name.rb
puts "What's your first name?"
first_name = gets.chomp

puts "What's your last name?"
last_name = gets.chomp

puts "Welcome, #{first_name} #{last_name}!"

=begin
$ ruby 4.rb
What's your first name?
Yuliia
What's your last name?
Tryhubniak
Welcome, Yuliia Tryhubniak!
=end

=begin
Description:
On lines 11 and 14, String objects are passed as arguments to 
the `puts` method call, outputting `What's your first name?`
and `What's your last name?` as prompts to the user to the console.

On lines 12 and 15, local variables `first_name` and `last_name`
are initialilized and reference the return values of `gets.chomp` 
methods invocations, respectively.

The `gets` method stands for "get string". It returns the user's
input as a string with a trailing "newline" character (`\n`).

The `chomp` method, chained with `gets`, is invoked on
the return value of `gets`. It eliminates `\n`, returning
a string by `gets` without it.

On line 17, the objects referenced by `first_name` and `last_name`
are interpolated into a string passed as an argument to the
`puts` method call.

The string interpolation `#{}` converts the object into a string 
calling the `to_s` method on the objects inside being interpolated.
This ia applied to not only strings, but to another data types,
like integers, floats, `nil`, booleans, symbols, arrays, hashes. 

The `puts` method returns `nil`, which isn't used here.
=end
