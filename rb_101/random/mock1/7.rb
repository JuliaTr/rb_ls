# 7.  What will be the output of the following code? Why?

def double_numbers(numbers)
  doubled = numbers.map do |number|
    number * 2
  end
  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
double_numbers(my_numbers)
puts my_numbers

# Output:
# 1
# 4
# 3
# 7
# 2
# 6

# Describe what's going on in this code snippet.
# Follow-up: What concept is displayed in this code snippet?

=begin
Describe what's going on in this code snippet.

On line 12, a local variable `my_numbers` is initilized and references
an Array object with a collection of integers `[1, 4, 3, 7, 2, 6]`.

On line 13, the object referenced by `my_numbers` is passed as an argument 
to the `double_numbers` method invocation, returning `[1, 4, 3, 7, 2, 6]`.

Arguments are bound with parameters.

On lines 5-10, in the method's definition, on lines 6-9, a `do..end`
block with a parameter `number` is passed to the non-mutating 
`map` method invoked on the object referenced by the parameter and
method's local variable `numbers`.

Inside the block, `number * 2` doubles each value in the array, but 
doesn't mutate the original object, because the `map` returns a new Array
object and a new method's local variable `double` assigned to it.

On line 14, the object referenced by `my_numbers` is passed to the
`puts` mehtod invocation, outputting `1`, `4`, `3`, `7`, `2`, 
`6` on each line to the console.


Follow-up: What concept is displayed in this code snippet?

Concept is mutating vs. non-mutating. The original object
wasn't mutated due to non-mutating `map` method invocation.
=end