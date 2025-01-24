=begin
Exercise:
What does the following error message tell you?

ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

Answer:
The error message tells that the `calculate_product` method 
invocation has 1 argument instead of 2, while having 2 parameters. 
For example:
=end
def calculate_product(number1, number2)
  number1 * number2
end

calculate_product(2)  

=begin
Output:
6.rb:14:in `calculate_product': wrong number of arguments (given 1, expected 2) (ArgumentError)
        from 6.rb:18:in `<main>'

In this example, on line 19, only one argument, an Integer object `2`,
is passed to the `calculate_product` method invocation. However,
the method definition on lines 15 - 17 has 2 parameters. That's
why the error massage is output.

To fix the code:
=end
def calculate_product(number1, number2)
  number1 * number2
end

p calculate_product(2, 3)    # 6

=begin
Now, `calculate_product` returns `6`, which we can see outputting
its return value.

Number of arguments and parameters should be the same, unless
the default parameters are specified in the method definition 
for the case the corresponding arguments are absent in the 
method invocation. It demonstrates the arguments vs. paramters
concept.
=end
