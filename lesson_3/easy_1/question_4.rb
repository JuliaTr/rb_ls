# What do the following method calls do (assume we reset `numbers` to the original array between method calls)?

numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)
numbers.delete(1)

=begin
irb(main):017:0> numbers = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]
irb(main):018:0> numbers.delete_at(1)
=> 2
irb(main):019:0> numbers
=> [1, 3, 4, 5]
irb(main):020:0> numbers = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]
irb(main):021:0> numbers.delete(1)
=> 1
irb(main):022:0> numbers
=> [2, 3, 4, 5]

The call to `Array#delete_at` deletes an element on at the index, passed to the method as an argument. 
On line 5, the return value of `numbers.delete_at(1)` is `2`, as the index of `2` is `1`.
Arrays are an indexed based collection of elements.

The call to `Array#delete` deletes an element with the value passed as an argument to the method.
On line 6, the return value of `numbers.delete(1)` is `1`.

These methods not just returning a modified version of the array, but they modify the caller in place.
=end

