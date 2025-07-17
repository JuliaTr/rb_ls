# What will the following code print? Why?

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

# Output:
# 0
# 1
# 2
# 3
# 4
# 10

=begin
The output is `0 1 2 3 4 10`.

On line 10, the return value of the `count_sheep` method invocation
is passed as an argument to the `puts` method invocation outputting
`10` to the concole. The `count_sheep` call outputs `0 1 2 3 4`
to the console due to `puts sheep` inside the method's body.

Lines 3-8 contain `count_sheep` method definition. Inside the 
method, on lines 4-6, there's a `do...end` block passed as an argument
to the `times` method invoked on an Integer object with a value
of `5`. The `times` method iterates 5 times starting from 0 to 4.
The `times` metthod return an integer it's invoked on.

The `sheep` is the block's parameter and local variable. So, line 5
`puts sheep` outputs `0 1 2 3 4` when the `count_sheep` is invoked.

On line 7, `10` is the last expression evaluated and executed in 
the method. So, `10` is returned implicitly from the method.

That's why the output is `0 1 2 3 4 10`.
=end
