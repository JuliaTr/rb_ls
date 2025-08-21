# Study the following code and state what will be displayed, and why:
def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# My string looks like this now: pumpkinsrutabaga

puts "My array looks like this now: #{my_array}"
# My array looks like this now: ["pumpkins"]

=begin
The output is `My string looks like this now: pumpkinsrutabaga`
and `My array looks like this now: ["pumpkins"]`.

On lines 7-8, there're 2 variables (`my_string` and `my_array`)
are initialized and references a String object `"pumpkins"` and 
an Array object `["pumpkins"]`, respectively. 

On line 9, the objects referenced by `my_string` and `my_array`
are passed as arguments to the `tricky_method_two` invocation. 
Arguments are bound to parameters.

Inside the method definition (lines 2-5) with parameters 
`a_string_param` and `an_array_param` there are 2 operations:
`<<` mutation (line 3) and `=` re-assignmnet (line 4). Parameters
are method's local variables. `a_string_param` points to
the same object as `my_string` (`"pumpkins"`). The same as 
`an_array_param` points to the same object as `my_array`.

Methods are self-contained. The parameters receive a copy of the
reference of the object, but not the object itself. Ruby behaves
more as if "pass-by-value-of-the-reference".

The mutating `<<` method mutates the calling object, affecting
the original object in place in the outer scope. `a_string_param`
still points to the same object as `my_string`, which was mutated
(`"pumpkinsrutabaga"`).

The assignmnet `=` operator performs re-assignment here, and 
it doesn't mutate the original object in the outer scope. 
Now `an_array_param` is assigned and points to the a new object 
`['pumpkins', 'rutabaga']`, without affecting original object.

That's why referencing `my_string` and `my_array` output 
`pumpkinsrutabaga` and `pumpkins`.
=end
