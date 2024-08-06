# What is the output? Why?

def tricky_method(string_param_one, string_param_two)
  string_param_one += "rutabaga"
  string_param_two << "rutabaga"
end

string_arg_one = "pumpkins"
string_arg_two = "pumpkins"
tricky_method(string_arg_one, string_arg_two)

puts "String_arg_one looks like this one: #{string_arg_one}"
# String_arg_one looks like this one: pumpkins
puts "String_arg_two looks like this one: #{string_arg_two}"
# String_arg_two looks like this one: pumpkinsrutabaga

=begin
The arguments in the `tricky_method` invocation are being passed by values.
These values are references to the objects in the outer scope.
The string argument, on lines 8 and 9, are passed to the method as references to the 'String` object.
The method definition always has its own variable scope.

The `String#+=` in the method's body, on line 4, is a re-assignment.
Re-assignment creates a new `String` object.
The reference from `string_arg_one` to the new object inside the method is aasigned to `string-param-one`.
The 'string_param_one' now is pointing to a new `String` object `"pumpkinsrutabaga"`, not `"pumpkins"`.
'string_arg_one' remains unchanged. `string_param_one` and `string_arg_one` don't point on the same object. 
Now they point on different objects.
So, it outputs `pumpkins`, being interpolated to the string, on line 13.

The `String#<<` method mutates the object being called on.
`String#<<` is called on the object referenced by `string_param_two`.
It is now `"pumpkinsrutabaga"`.
The local variable `string_param_two` to the method points to the original object.
`string_arg_two` and `string_param_two` point to the same object.
So, the output to the console is `pumpkisrutabaga`, being interpolated to the string, on line 15.


In irb:
irb(main):001:1* def tricky_method(string_param_one, string_param_two)
irb(main):002:1*   string_param_one += "rutabaga"
irb(main):003:1*   string_param_two << "rutabaga"
irb(main):004:0> end
=> :tricky_method
irb(main):005:0> string_arg_one = "pumpkins"
=> "pumpkins"
irb(main):006:0> string_arg_two = "pumpkins"
=> "pumpkins"
irb(main):007:0> tricky_method(string_arg_one, string_arg_two)
=> "pumpkinsrutabaga"
irb(main):008:0> puts "String_arg_one looks like this one: #{string_arg_one}"
String_arg_one looks like this one: pumpkins
=> nil                                                                          
irb(main):009:0> puts "String_arg_two looks like this one: #{string_arg_two}"
String_arg_two looks like this one: pumpkinsrutabaga
=end