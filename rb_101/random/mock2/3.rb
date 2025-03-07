# 3. Consider the following code:

CONSTANT = 'Initial value'

def update_constant
  CONSTANT = 'Updated value'
end

update_constant
puts CONSTANT

# What will this code output? Why?
# Follow-up: What concept is demonstrated in this code snippet?

=begin
What will this code output? Why?

Output is `dynamic constant assignment (SyntaxError)`.

On line 3, a constant variable `CONSTANT` is initialized and 
references a String object with a value of `Initial value`.

On line 9, the `update_constant` method is invoked.

Inside the defined method on lines 5-7, on line 6, `CONSTANT` is
reassigned to `Update value`. Because of this, the error message
is output.

On line 10, the `puts CONSTANT` isn't executed.


Follow-up: What concept is demonstrated in this code snippet?

Method definitions can access constants directly from the outer 
scope. However, constants cannot be reaasigned inside the method 
definitions.
=end