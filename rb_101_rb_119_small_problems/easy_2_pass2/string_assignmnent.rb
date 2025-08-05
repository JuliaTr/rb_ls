## Example 1: 
name = 'Bob'
save_name = name
name = 'Alice'    # reassignment
puts name, save_name

# Output:
# Alice
# Bob


## Example 2:
# What does this print out? Can you explain these results?
name = 'Bob'
save_name = name  # 'Bob'
name.upcase!
puts name, save_name

# Output:
# BOB
# BOB

=begin
The output is `BOB`, `BOB` on each line separately.

On line 14, a local variable `name` is initialized and 
referenced a String object with a value of `'Bob'`. 

On line 15, a local variable `save_name` is initialized and
references the same object which `name` references (`'Bob'`).

On line 16, the mutating `String#upcase!` method is invoked 
on the object referenced by `name` (`'Bob'`), destructing the 
original object to `"BOB"` in place, and returning `"BOB"`.

As `name` and `save_name` point to the same object, the 
output on line 17 calling to `puts name, save_name` is 
`BOB`, `BOB` on each line separately to the console.
=end




### Experiments:
name = 'Bob'
save_name = name
p name.upcase    # "BOB"
puts name, save_name

# Output:
# "BOB"
# Bob
# Bob


p 'Bob'.upcase  # "BOB"
