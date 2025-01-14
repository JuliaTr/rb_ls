# Exercise:
# Add two strings together that, when concatenated, return 
# your first and last name as your full name in one string.

first_name = 'Yuliia'
last_name = 'Tryhubniak'

# String concatenation:
full_name = first_name + ' ' + last_name
p full_name

# Output: "Yuliia Tryhubniak"

=begin
Description:
On lines 1 and 2, local variables `first_name` and `last_name`
are initialized and reference String objects with the values of 
`'Yuliia'` and `'Tryhubniak'`, respectively. 

On line 4, the objects referenced by `fist_name` and 
`last_name` are concatenated due to the `#+` method 
invocation. The object referenced by `first_name`, an empty 
string`' '`, the object referenced by `last_name` are concatenated  
in two operations, returning a new string `"Yuliia Tryhubniak"``, 
which is assigned to an initialized local variable `full_name`.

The `#+` method always returns a new String object, which is 
important for memory usage and performance. 

On line 5, `"Yuliia Tryhubniak"`, referenced by `full_name` 
passed to the `#p` method invocation, which outputs `"Yuliia 
Truhubniak"` to the console. The `#p` method outputs a raw 
representation of the object, which includes quotation marks 
of a string literal. The `#p` is used here to output the 
return value of the full name, required by in the task description.
=end


### Experiments:

# String concatenation:
p 'Yuliia ' + 'Tryhubniak'
# Output: "Yuliia Tryhubniak"


# String interpolation:
first_name = 'Yuliia'
last_name = 'Tryhubniak'

puts "#{first_name} #{last_name}"

# Output: Yuliia Tryhubniak

=begin
Description:
On lines 47 and 48, local variables `first_name` and `last_name`
are initialized and reference String objects with values of 
`'Yuliia'` and `'Tryhubniak'`, respectively.

On line 50, the objects referenced by `first_name` and `last_name`
are interpolated into a string passed as an argument to the 
`puts` method invocation, which outputs `Yuliia Tryhubniak` 
to the console. The `puts` method returns `nil`, which isn't 
used in this code snippet.
=end
