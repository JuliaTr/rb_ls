=begin
What is the **block**'s return value in the following code? How 
is it determined? Also, what is the return value of `any?` in 
this code and what does it output?
=end
[1, 2, 3].any? do |num|
  puts num
  num.odd?
end


# Answer:
result = [1, 2, 3].any? do |num|
  puts num
  p num.odd?
end

p result

# Output:
# 1
# true
# true

=begin
*What is the **block**'s return value in the following code?* 
The  **block**'s return value is a boolean `true`.

*How is it determined?*
This is because the block returns the last evaluated expression
within the block. The last eveluated expression is `num.odd?`, 
returning `true` As on the first iteration the first elemnt 
is `1`, which is odd, the return value of `num.odd?` is `true`
(the block's return value).

The `Integer#odd?` returns either `true` or `false`.

*Also, what is the return value of `any?` in this code?*
The return value of `any?` is `true`, here, because `Array#any?`
returns the block's return value, meeting the given criteria 
(`num.odd?` (line 8)).

*What does it output?*
It outputs `1`, because the iteration stops as soon as `#any?`
finds an element which meets the criteria indicated on line 8 
(num.odd?). 
=end
