# Study the following code and state what will be displayed, and why:
def tricky_method(string_param_one, string_param_two)
  string_param_one += "rutabaga"
  string_param_two << "rutabaga"
end

string_arg_one = "pumpkins"
string_arg_two = "pumpkins"
tricky_method(string_arg_one, string_arg_two)

puts "String_arg_one looks like this now: #{string_arg_one}"
# String_arg_one looks like this now: pumpkins.

puts "String_arg_two looks like this now: #{string_arg_two}"
# String_arg_one looks like this now: pumpkinsrutabaga.

=begin
The output is `String_arg_one looks like this now: pumpkins.`
and `String_arg_one looks like this now: pumpkinsrutabaga.`.

On lines 7-8, there're 2 variables (`string_arg_one` and `string_arg_two`)
are initialized and references 2 different String objects `"pumpkins" 
and `"pumpkins"`. 

On line 9, the objects referenced by `string_arg_one` and `string_arg_two`
are passed as arguments to the `tricky_method` invocation. 
Argument are bound to parameters.

Inside the method definition (lines 2-5) with parameters 
`string_param_one` and `string_param_two` there are 2 operations:
`+=` re-assignmnet (line 3) and `<<` mutation (line 4). Parameters
are method's local variables. `string_param_one` points to
the same object as `string_arg_one`. The same as `string_param_two`
points to the same object as `string_arg_two`.

Methods are self-contained. The parameters receive a copy of the
reference of the object, but not the object itself. Ruby is 
"pass-by-value-of-the-reference".

The `+=` is a short-hand for `string_param_one = string_parame_one + "rutabaga"`.
The `+=` returns a new object, and it doesn't mutate the original
object in the outer scope. Now `string_param_one` points to the
return value of `string_param_one` (`"pumpkinsrutabaga"`), which 
is a new object, without affecting original object.

The mutating `<<` method mutates the calling object, affecting
the original object in place in the outer scope. `string_param_two`
still points to the same object as `string_arg_two`, which was mutated
(`"pumpkinsrutabaga"`).

That's why referencing `string_arg_one` and `string_arg_two`
output `pumpkins` and `pumpkinsrutabaga`.
=end
