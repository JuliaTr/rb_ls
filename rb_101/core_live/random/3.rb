# What will the following code output? Explain why.
a = "hi there"
b = a
a = "not here"
puts b         # hi there

# Explanation:
# It outputs `hi there`.

# It illustrates the following concepts: variables as pointers,
# variables pointing to the same object, and reassignment.

# On line 1, a local variable `a` is initialized and references a String
# object with the value `"hi there"`. On line 2, a local variable `b`
# is initialized, references, and points to the same object as `a` and 
# its `object_id`. `b = a` creates a new reference, not a copy. On line 
# 3, `a` is reassigned to `"not here"` with a new `object_id` without 
# affecting the object that `b` points to.

# In Ruby, the assignment (`=`) operator is used for reassignment,
# assigning a new object to an existing variable without mutating the 
# original object. In Ruby, each string, array, and hash being mutable 
# has its unique `object_id` even if the value is the same. 

# Now, `a` points to `"not here"`, while `b` still points to `"hi there"`. 

# On line 4, the object referenced by `b` is passed as an argument to the
# `Kernel#puts` method invocation, outputting `hi there` to the console.
# The `#puts` method returns `nil`, but the return value isn't used and 
# doesn't affect the output and the behavior of the code. 
