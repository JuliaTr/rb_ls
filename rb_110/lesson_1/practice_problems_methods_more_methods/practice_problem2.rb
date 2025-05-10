# Exercise: How does `count` treat the block's return value? 
# How can we find out?
result = ['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

p result  # 2

=begin
The `count` method counts how many elements in the collection
meet the criteria evaluated to true as block's return value.

The `str.length < 4` expression (line 4) evaluated to a boolean 
`true`, which is truthy, for `'ant'` and `'bat'` is the only evaluated
expression returned by the block.

So, `count` counts an element if the block's return value evaluates 
as true. `count` considers the truthiness of the block's return 
value.
=end
