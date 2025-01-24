=begin
Exercise:
Write a program that includes a method called `multiply` that 
takes two arguments and returns the product of the two numbers.
=end

# Solution:
def multiply(number1, number2)
  number1 * number2
end

p multiply(3, 2)     # 6

=begin
Description:
On line 12, two Integer objects with values of `3` and `2` are
passed as arguments to the `multiply` method invocation, 
returning `6`. `6` is passed an and argument to the `p` method 
invocation, outputting it to the console.

On lines 8-10, there's a method definition with two parameters
`number1` and `number2`. `3` and `2` are bound to `number1` and
`number2`, respectively. On line 9,  is a multiplication operation 
represented by `number1 * number2`, which returns `6`. Line 9 is 
the only line evaluated and executed by `multiply`, so `6` is 
returned implicitly.

The data should be passed as arguments to the method invocation 
and be recieved by the parameters. It demonstrates the relation
betweeen arguments (passed during method invocation) and
parameters (specified in the method definition). 
=end
