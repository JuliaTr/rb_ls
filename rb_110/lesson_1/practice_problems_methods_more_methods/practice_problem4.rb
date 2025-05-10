# What is the return value of `each_with_object` in the following 
# code? Why?
arr = ['ant', 'bear', 'cat']

result = arr.each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

p result   # {"a"=>"ant", "b"=>"bear", "c"=>"cat"}

=begin
On lines 5-7, a `do...end` block is passed as an argument to the
`Enumerable#each_with_object` method invoked on an Array object with 
a collection of strings `['ant', 'bear', 'cat']`.

The `value` and the `hash` are block's paramaeters and local variables.

Before iteration begins, the `each_with_object` method's  argument `{}`
is passed to the method and is received by `hash`.

On each iteration a hash `hash` is being built adding a key-value pair
`hash[value[0]] = value` from the each element in the original array to 
the hash. So, inside the block `{}` is mutated.
=end
