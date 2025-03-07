=begin
8.  Explain the concept of truthiness in Ruby. How does it 
differ from true/false?

In Ruby, everything, including `0`, `""`, and boolean `true` is truthy, 
except for boolean `false` and `nil`. 

In Ruby, boolean values `true` and `false` is not the same as words 
true and false. These words are not values. They only mean that something
is true or false, but they don't define if a value is truthy of falsy,
in Ruby, `nil` is a falsy value.
=end

# Examples:
a = ''
b = 0
c = false
d = nil

"Truthy" if a         # => "Truthy"
"Still truthy" if b   # => "Still truthy"
"Falsy" if c          # => nil
"Falsy, too" if d     # => nil

=begin
On lines 1 - 4, local variables `a`, `b`, `c`, `d` are initialized 
and reference an empty String object `''`, an Integer object with 
a value of `0`, a Boolean object with a value of `false`, and a 
Nil object with a value of `nil`, respectively.

On lines 6 - 9, there’re one-line modifier if statements. On lines 
6-7, `''` and `0` referenced by `a` and `b`, respectively, are 
truthy, so the code of the left of `if` is executed, returning 
`"Truthy"` and `"Still truthy"`.

In contrast, on lines 8 - 9, `false` and `nil` referenced by `c` 
and `d`, respectively, are falsy, so the code of the left of `if` 
is not executed, returning `nil` for both statements.
=end
