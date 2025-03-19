str = 'abcde'
arr = ['a', 'b', 'c', 'd', 'e']

p str[2]   # "c"
p arr[2]   # "c"

p str[5]   # nil
p arr[5]   # nil

=begin
On lines 7 and 8, the `[5]` call referencing an out-of-bound index,
returning `nil`. This is because strings and arrays are zero-indexed.
So, the 5th item will have index `4`.
=end



arr = [3, 'd', nil]
p arr[2]   # nil; valid return
p arr[3]   # nil; out-of-bounds reference

=begin
On line 19, the `arr[2]` returns `nil`, which is a valid return value.
This is because the item at index `2` is `nil`.

On line 20, the `arr[3]` returns `nil`, too, which is out-of-bounds
reference. This is because there's no itens at index `3`. The arrays
are index-based starting from `0`. `[3, 'd', nil]` has three element,
the last index of which is `2`.
=end



arr = [3, 'd', nil]
p arr.fetch(2)
p arr.fetch(3) 

# Output:
# nil
# index 3 outside of array bounds: -3...3 (IndexError)
