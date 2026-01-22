=begin
A fixed-length array is an array that always has a fixed number 
of elements. Write a class that implements a fixed-length array, 
and provides the necessary methods.
=end

## Possible solution
class FixedArray
  def initialize(max_size)
    @array = Array.new(max_size)
  end

  # getter method
  def [](index)
    # raise `IndexError` when the index is out range by using `@array.fetch(index)`
    @array.fetch(index)
  end

  # setter method
  def []=(index, value)
    # raise `IndexError` when the index is out range
    # calls `FixedArray#[]` method (above)
    # `self[index]` is the same as "run the same index validation I already
    #  wrote in `#[]` before assigning"
    # Getther method `[](index)` runs.
    self[index]                  # the same as `self.[](index)`
    @array[index] = value
  end

  def to_a
    @array.clone   # `clone` doesn't allow us to change number of elements
  end

  def to_s
    # `to_a` is getter
    # `to_s` is Ruby built-in `Array#to_s` method
    to_a.to_s
  end
end

=begin
`to_a` "gets" a representation of the object's state -- in this case, 
a regular array version of our `FixedArray`. It provides read-only
access to the object's data in a specific format.

The call `to_a.to_s` is a method chain:
1. `to_a` is called on the `Fixed#Array` object (`self`). This executes 
    our custom method, which returns a new `Array` object (the clone 
    of `@array`).
2. `.to_s` is called on the *result* of `to_a` -- that new `Array` 
    object. Because the receiver of the call is now an `Array`, Ruby
    uses the built-in `Array#to_s` method to get the string representation.

`FixedArray#to_s`: "First, turn me into a regular array, then use the
standard way an array turns itself into a string."
=end

fixed_array = FixedArray.new(5)
puts fixed_array[3] == nil
puts fixed_array.to_a == [nil] * 5

fixed_array[3] = 'a'
puts fixed_array[3] == 'a'
puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

fixed_array[1] = 'b'
puts fixed_array[1] == 'b'
puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

fixed_array[1] = 'c'
puts fixed_array[1] == 'c'
puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

fixed_array[4] = 'd'
puts fixed_array[4] == 'd'
puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'

puts fixed_array[-1] == 'd'
puts fixed_array[-4] == 'c'

begin
  fixed_array[6]
  puts false  # if exception doesn't occur, the code displays `false`
rescue IndexError
  puts true   # if exception occurs, it displays `true`
end

begin
  fixed_array[-7] = 3
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[7] = 3
  puts false
rescue IndexError
  puts true
end
# The above code should output `true` 16 times.
# All test cases return `true`.

=begin
1. The `[]=` method is called with `index = 7` and `value = 3`.
2. `self[index]` is executed.
3. Ruby understands this as a call to the custom `[](index)` getter
  method on the current `FixedArray` instance.
4. Inside our `[]` method, `@array.fetch(7)` is executed.
5. Since the index `7` is out of bounds for `@array`, `fetch` correctly
  raises an `IndexError`.
6. The `rescue` block catches the `IndexError`, and `puts true` is executed.
=end




## Experiments
p [nil] * 5    # [nil, nil, nil, nil, nil]


arr = Array.new(5)
p arr          # [nil, nil, nil, nil, nil]


=begin
irb(main):002:0> a = [nil] * 5
=> [nil, nil, nil, nil, nil]
irb(main):003:0> a.fetch(6)
(irb):3:in `fetch': index 6 outside of array bounds: -5...5 (IndexError)
        from (irb):3:in `<main>'                   
        from /usr/local/Cellar/ruby/3.2.2_1/lib/ruby/gems/3.2.0/gems/irb-1.6.2/exe/irb:11:in `<top (required)>'                    
        from /usr/local/opt/ruby/bin/irb:25:in `load'
        from /usr/local/opt/ruby/bin/irb:25:in `<main>'
irb(main):004:0> a.fetch(1)
=> nil
irb(main):005:0> a[1] = 'a'
=> "a"
irb(main):006:0> a.fetch(1)
=> "a"


irb(main):009:0> [7]
=> [7]
=end



# without `self[index]` -- `[index]` instead: 
class FixedArray
  def initialize(max_size)
    @array = Array.new(max_size)
  end

  def [](index)
    @array.fetch(index)
  end

  def []=(index, value)
    # Without `self` Ruby sees `[]` as **creating a new
    # `Array` literal**, no method call, no error. It is a special 
    # case exactly with `[]`, even though we can call getter methods
    # without `self`.
    [index]   # issue is here
    @array[index] = value
  end

  def to_a
    @array.clone
  end

  def to_s
    to_a.to_s
  end
end

fixed_array = FixedArray.new(5)
puts fixed_array[3] == nil
puts fixed_array.to_a == [nil] * 5

fixed_array[3] = 'a'
puts fixed_array[3] == 'a'
puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

fixed_array[1] = 'b'
puts fixed_array == 'b'
puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

fixed_array[1] = 'c'
puts fixed_array[1] == 'c'
puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

fixed_array[4] = 'd'
puts fixed_array[4] == 'd'
puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
puts fixed_array.to_s == `[nil, "c", nil, "a", "d"]`

puts fixed_array[-1] == 'd'
puts fixed_array[-4] == 'c'

begin
  fixed_array[6]
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[-7] = 3
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[7] = 3
  puts false           # outputs `false`
rescue IndexError
  puts true
end
# Everything else prints `true`.

=begin
Test case `fixed_array[7] = 3` fails, because (from LSBot):
1. The `[]=` method is called with `index = 7` and `value = 3`
2. The line `[index]` is executed.
3. Ruby sees `[7]` and thinks we want to create a brand new array
  containing the integer `7`. It does this, and then immediately
  discards the new array because it isn't assigned to anything.
4. No `IndexError` is raised. Creating an array `[7]` is valid 
  operation.
5. `@array[7] = 3`, executes. This uses the standard `Array#[]=`
  method on the instance variable `@array`. When this method is used
  with an out-of-bounds index, it extends the array and fills the gaps
  with `nil`. The `@array` is improperly modified, and the fixed-sized
  constraint is broken.
6. Since no `IndexError` was raised, the `rescue` block is skipped,
  and `puts false` is executed.
=end
