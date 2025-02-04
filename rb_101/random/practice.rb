LIMIT = 100

def increase(number)
  number += 10
  number = LIMIT if number > LIMIT
  number
end

value = 95
result = increase(value)
puts value
puts result

=begin
Answer:
On lines 9-10, local variables `value`, `result` are initialized
and reference Integer objects with values of `95` and `100`, respectively.
On line 10, `100` is a return value of the `increase(value)` method
invocation. `95` referenced by `value` is passed as an argument 
to `increase`.

On line 1, a constant variable `LIMIT` is initialized and references
`100`. 

Lines 3 - 7 contain a method definition with a parameter `number`.
`number` is method's local variable.

On line 4, `number += 10` (105 = 95 + 10) is a reassignment.

On line 5, there's an `if` statement modifier. If the condition 
`number > LIMIT` (105 > 100) is true, `100` is assigned to `number`.

On line 6, `100` is returned.

1. In Snippet 1, what will be the output of the `puts value` and 
`puts result` statements? Explain why.
The output is:
95
100

Method definitions have a self-contained scope. `number` is new variable 
for the method, initialized on line 3, and it references the same object 
as `value`, which is `95` in the outer scope.

In addition, on line 4, reassignment `number += 10` is a non-destructive
operation, creating a new object without modifying the original in the
outer scope.

So, `puts value` outputs `95`. While `puts result` outputs the return 
value of `increase(value)`, which is `100`, without mutating the original
`value`.

2. How does Snippet 1 demonstrate the concept of constants and 
their scope?

Method definitions can access constants in the outer scope directly
without arguments and parameters. `LIMIT`, defined outside the method,
is used inside `increase`.
=end