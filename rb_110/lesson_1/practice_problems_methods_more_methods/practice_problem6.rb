# What is the return value of the following statement? Why?
p ['ant', 'bear', 'caterpillar'].pop.size   # 11

=begin
The return value is `11`. 

The `#size` method is chained and invoked on the return value of 
`#pop` called on an array. The `#pop` method returns the 
last element of the array, which is `"caterpillar"`. 
The size of `"caterpillar"` is 11 characters.
=end
