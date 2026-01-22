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
    
    # # Without `self` Ruby sees it as **creating a new `Array` literal**,
    # # no method call, no error 
    # [index]
    @array[index] = value
  end

  def to_a
    @array.clone   # `clone` doesn't allow us to change number of elements
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
=end


