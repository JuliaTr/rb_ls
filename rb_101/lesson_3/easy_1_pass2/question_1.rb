# What would you expect the code below to print out?
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers   

# Output:
# 1
# 2
# 2
# 3

=begin
The non-mutating `uniq` method returns a new object with unique
elements `[1, 2, 3]`, on line 3, without affecting the original 
object.

That's why an original object references by `numbers` (line 5) 
was not mutated.
=end

=begin
The `puts` method calls `to_s` on its argument, outputing each
element on a separate line.
=end


## Experiments:
p numbers.inspect       # "[1, 2, 2, 3]"
p numbers               # [1, 2, 2, 3]
puts numbers.inspect     # [1, 2, 2, 3]
