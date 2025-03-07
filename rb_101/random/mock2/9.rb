# 9. What will be the output of the following code? Why?

def change_name(name)
  name = 'bob'
end

name = 'jim'
change_name(name)
puts name    # jim

# Follow-up: What concept is displayed in this code snippet?

=begin
Answer:
What will be the output of the following code? Why?

Output is `jim`.

On line 9, a local variable `name` is initialized and references 
a String object with a value of `"jim"`.

On line 10, the object referenced by `name` is passsed as an argument 
to the `change_name` method invocation, returning `"bob"`.

On lines 5 - 7, inside the method's body, the parameter and the method's
local variable `name` in reassigned to `"bob"`, which doesn't affect
the original object in the outer scope.

On line 11, the object referenced by `name` is passed to the `puts`
method invocation outputting `jim` to the console.


Follow-up: What concept is displayed in this code snippet?

The concept is pass-by-value-of-the-reference.

Arguments are bound with parameters. Upon the method invocation 
arguments pass the copy of the refernce of the object, not the copy
of the object, to the parameter. The method
definition creates the method's local variable, which may have the 
same name as the variable in the outer scope. In the inner scope,
reassignment doesn't mutate the original object. So, Ruby behaves as
if pass-by-value. So, on line 11, after the method invocation,
`name` references the same unmodified object. But Ruby is pass-
by-value-of-the-reference.
=end
