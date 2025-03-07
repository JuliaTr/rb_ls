# 6.  Consider the following code:

CONSTANT = [1, 2, 3]

def modify_constant
  CONSTANT[1] = 4
end

modify_constant
p CONSTANT   # [1, 4, 3]

# Describe what's going on in this code snippet.
# Follow-up: What concept is displayed in this code snippet?

=begin
Describe what's going on in this code snippet.

On line 5, a constant `CONSTANT` is initialized and references an 
Array object with a collection of integers `[1, 2, 3]`. 

On line 11, the `modify_constant` is invoked, returning `4`.

On line 7-9, in the method definition, on line 8, the first value of
the element of array referenced by `CONSTANT` is reassigned to `4`.

The `[] =` retrieves and reassigns the value of the collection, returning 
a new value.

On line 12, the object referenced by `CONSTANT` is passed as an argument
to the `p` method, outputting the raw representation of the object passed to
the `p` method, which is `[1, 4, 3]`. The original object was mutated.


Follow-up: What concept is displayed in this code snippet?

Concept is scope of constants. Methods have their own scopes. 
Particularly, they can, directly without parameters, access 
objects refereneced by constants in the outer scope. 
Even though the warning won't be raised, it is not recommended
to mutate constants. They should stay immutable.
=end
