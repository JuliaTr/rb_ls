# What will be the output of the following code? Explain the concept demonstrated here.
def fix(value)
  value.upcase!
  value.concat('!')
  value
end

s = 'hello'
t = fix(s)

puts s # HELLO!
puts t # HELLO!

# # Explanation:
# It outputs `HELLO!` twice.

# It illustrates the following concepts: local variable scope regarding 
# method definition, object passing strategy through arguments and parameters, 
# mutable method invocation on the mutable object affecting the original 
# object, variables as pointers, and behavior similar to "pass by 
# reference".

# On line 7, a local variable `s` is initialized and references a String 
# object with the value `'hello'`. On line 8, the object referenced by 
# `s` is passed as an argument to the `fix` method invocation. A local
# variable `t` is initialized and references the return value of the 
# `fix` method call.

# Lines 1-5 contain a method definition with a parameter `value` bound
# with the argument. On line 1, a local to the method variable `value`
# is initialized, references, and points to `'hello'`. In Ruby, method
# definitions have their own scope. The outer scope cannot access the 
# inner scope of the method definition without arguments and parameters.

# Because of, in Ruby, method definition's parameters receive a copy of 
# the object's reference, not a copy of the object, sometimes Ruby's 
# behavior is referred to as "pass by value of the reference" or "call
# by sharing".

# On lines 2 and 3, the mutating methods `String#upcase!` and 
# `String#concat` are invoked on the object referenced by `value`, 
# mutating the original object in place in the outer scope. On line 4, 
# the object referenced by `value` is returned. Now, `value` and `s` 
# point to the same mutated object, but with the value `"HELLO!"`

# In Ruby, strings, arrays, and hashes are mutable data types. When a 
# mutating method like the `#upcase!` with the `!` sign or 
# `#concat`, `String#<<` are invoked, they mutate the original 
# object in place.

# Upon the method invocation, inside the method definition, Ruby exhibits
# behaviour similar to "pass by reference", as it's not true "pass by reference",
# due to the original object mutation consistent for mutable data types.

# On lines 10 and 11, the objects referenced by `s` and `t` are passed
# to the `Kernel#puts` method invocation, outputting `HELLO!` twice for 
# each `#puts` method call to the console.