# What will the following code print, and why? 
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    p b  # to test
    a += b
  end
end

my_value(array)  # NoMethodError
puts a

# Output:
# 1
# NameError

=begin
The output is `undefined method `+' for nil:NilClass (NoMethodError)`.

On line 2, a local variable `a` is initialized and references
an Integer object with a value of `7`.

On line 3, a local variable `array` is initialized and references
an Array object `[1, 2, 3]`.

An object referenced by `array` is passed as an argument to
`my_value` method (line 12) and `puts` method (line 13) invocations.

Lines 5-10 contain a method definition with an argument `ary`.
`ary` is also method's local variable. 

Inside the method definition, on lines 6-9 there's a `do..end` block passed as an argument
to `each` method invoked on the object referenced by `ary`.
Inside the block, `b` is block's parameter and local variable.
On line 8, the expression `a += b` cause `NoMethodError`, because
blocks inside method definitions cannot access and modify local 
variables in the outer scope. Mehtods are self-contained in terms
of variable scope. `a` isn't initialized inside the method, so
it cannot be reassigned. Ruby assigns `nil` to `a`, because we
try to reference `a`, that should exist, but it hasn't been assigned
to a value yet.

Because of the error, line 13 isn't executed.
=end


## Experiments:
a = 7
array = [1, 2, 3]

def my_value(ary, aaa)
  ary.each do |b|
    aaa += b
  end
end

p my_value(array, a)  # [1, 2, 3]
puts a  # 7
