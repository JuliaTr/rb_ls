# Example 1:
name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
# Output:
# Alice
# Bob

# Explanation:
# An initialised local variable `name`, on line 2, points to a String object with a value `'Bob'`.
# An initialised local variable `save_name`, on line 3, points to an objecr 'Bob', referenced by `name`.
# On line 4, now `name` points to a different String object with a value `'Alice'`, which is a variable reassignment.
# On line 5, objects referenced by `name` and `save_name` are passed as arguments to the `puts` method invocation,
# outputting `Alice` and `Bob` on a separate line each of them.


# Example 2:
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
# Output:
# BOB
# BOB

# Explanation:
# On line 19, a local variable `name` is initialised and references a String object with a value `'Bob'`.
# On line 20, a local variable `save_name` is initialised an references an object, referensed by `name`, which is `'Bob'`. 
# So, `name` and `save_name` point to the same object.
# On line 21, the distructive method `String#upcase!` is invoked on the object referenced by `name`, mutating the caller.
# So, now `'Bob'` is upcase as `'BOB'` and it is outputted twice, each on a separate line, to the console, as a result from that
# objects referenced by both `name` and `save_name` are passed as arguments to the `Kernel#puts` method invocation, on line 22.
# It illustrates variable reassignment, variables as pointers, mutating values, mutating methods and mutating the caller, 
# mutable data types, and outputting the value to the console.
