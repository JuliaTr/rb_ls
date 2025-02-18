# Output?
c = false && true
d = nil || false

f = c == d ? "true" : "false"
puts f  # true

=begin
The output is `true`. 

On line 1, a local variable `c` is initialized and references an evaluated
result of a logical expression `false && true`, which is evaluated to
'false' due to short-circuiting.

On line 2, a local variable `d` is initialized and references an evaluated
result of a logical expression `nil || false`, which is evaluated to
'false' due to full evaluation.

In the ternary expression, on line 4, because the condition `c == d` 
(`false == false`) is evaluated to a boolean `true`, which is a truthy 
value, so a String object with a value of `"true"` is evaluated, 
executed, and output on line 5.
=end


### Experiments: 
def display
  puts "true"
end

c = nil && display # nil
d = nil || false

f = c == d ? "true" : "false"
puts f    # false

=begin
The `display` method invocation isn't evaluated due to short-circuiting,
so `"true"`, on line 28, isn't output.
=end
