GREETING = "Hello"

def greet(name = "World")
  name = name.upcase
  puts "#{GREETING}, #{name}!"
end

name = "Alice"
greet(name)
puts name

numbers = [1, 2, 3]
doubled = numbers.map do |num|
  num * 2
end

puts numbers.object_id
puts doubled.object_id

=begin
1.What will be the output of this code? Explain why.
2.What concept is demonstrated by the relationship between the `name` 
parameter in the `greet` method and the `name` variable in the main 
program?
3.Is the `greet` method a mutating or non-mutating method with respect 
to its argument? Explain your reasoning.
4.What does the `puts numbers.object_id` and `puts doubled.object_id` 
demonstrate about the `map` method?

Answer:
On lines 1, 8, 12, a constant `GREETING`, two local variables `name` 
and `numbers` are initialized, references and point to two String 
objects `"Hello"`, `"Alice"`, and an Array object `[1, 2, 3]`, 
respectively.

On line 9, the object referenced by `name` is passed as an argument
to the `greet` method invocation. Lines 3-6 contain a method definition
with a default parameter `name = "World"`. Parameters are bound with the 
arguments. `"Alice"` is passed, so the default value isn't used. On line 
4, the non-mutating `upcase` method is invoked on the object referenced 
by `name`, which is `"Alice"`. The `upcase` return value is reassigned 
to `name`. On line 5, the `puts` method outputs `Hello ALICE!`.

On line 10, `puts name` outputs `Alice`.

Lines 13-15 contain a `do...end` block with a parameter `num` passed
to the non-mutating `map` method, invoked on the object referenced by 
`numbers`. On line 14, upon each iteration, the `*` method is invoked 
on each element from the original array multiplied by 2. On line 13, a 
local variable `doubled` is initialized, references and points to the 
return value of the block.

Lines 17 and 18 output object's ID referenced by `numbers` and `doubled`,
which are `60` and `80`.

1.What will be the output of this code? Explain why.

The output is:
Hello, ALICE!
Alice
60
80

The method's inner scope can access constants from the outer scope. However, 
the inner scope can access local variables from the outer scope only through 
arguments and parameters. 

`upcase` returns a new object `"ALICE"`. It is assigned to `name`. It has no 
effect on the original object in the outer scope, so `"Alice"` 
was not mutated. That's why lines 5 and 10 output `Hello, ALICE!` and `Alice`, 
respectively.

`number` and `doubled` point to two different objects with different 
`object_id`s, which are `60` and `80`, respectively.

    

2.What concept is demonstrated by the relationship between the `name` parameter 
in the `greet` method and the `name` variable in the main program?

The concept is variables as pointers. 

On line 3, a method's local variable `name` is initialized, references, and points 
to the same object as `name` in the outer scope. Method's arguments and 
parameters, even if they have the same name, always point to the same object.
    


3.Is the `greet` method a mutating or non-mutating method with respect to its 
argument? Explain your reasoning.

The `greet` method is a non-mutating method.

On line 4, `=` is used for reassignment, which returns a new object without mutating 
the original one. On line 5, the `puts` method outputs a string representation of a 
value passed to it without mutating the original object.
    


4.What does the `puts numbers.object_id` and `puts doubled.object_id` demonstrate 
about the `map` method?

`map` is a non-destructive method, which doesn't modify the original array.
`map` always returns a new array object with the same number of elements as the 
original array based on the block's return value. Each element is the result of the 
return value of the block once for every element in the original array. `map` uses the
return value of the block to perform transformation on each element in the array.

Arrays are mutable data types in Ruby. So, each new array object, even with the same 
value, has a new `object_id`. That's why on lines 17 and 18, the output of `number` 
and `doubled` objects' IDs will be different, varying between Ruby sessions.
=end

