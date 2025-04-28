# What will the following code print, and why?

a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a      # 7

=begin

Output is `7`.

On line 3, a local variable `a` is initialized and references
an Integer object with a value of `7`.

On line 9, `7` referenced by `a` is passed as an argument to
the `my_value` method invocation, returning `17`. Arguments are
bound with parameters.

Lines 5-7 contain `my_value` method definition with a parameter
`a`, which is a method's local variable.

Inside the method's body, on line 6, the `a += 10` doesn't mutate
the object referenced by `a` (`7` - immutable data type) in the 
outer scope (line 3).

On line 10, the call to the `puts a` outputs `7` to the console

Methods are self-contained, meaning that they have own local 
variables scope. Method's variables may have the same name as 
variables in the outer scope, but they are different. Method 
definition can access data from the outer scope only though 
arguments and parameters. Outer scope cannot access variables
in the inner scope.

Like reassignment (`=`), the `+=` is non-mutating method, so 
it doesn't mutate object in the outer scope.

Here, Ruby behaves as if pass-by-value, because object in the 
outer scope wasn't mutated. Ruby is considered as 
pass-by-value-of-the-reference, because the parameter receives 
a copy of the reference of the object, not the copy of the 
object itself, from arguments.
=end



# Experiments:
a = 7
p a.object_id

def my_value(a)
  a = 7
  p a.object_id
end

my_value(a)
p a
p a.object_id

# Output:
# 15
# 15
# 7
# 15
