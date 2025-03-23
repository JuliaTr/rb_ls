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



str = 'abcde'
arr = ['a', 'b', 'c', 'd', 'e']

p str[-2]   # "d"
p arr[-2]   # "d"

=begin
On lines 47, 48, the negative indice (`-2`) is passed as an argument
to the `#[]` method invoked on the objects `'abcde'` and 
`['a', 'b', 'c', 'd', 'e']` referenced by `str` and `arr`, which are local
variables inittialized on lines 44, 45.
=end



str = 'ghijk'
arr = ['g', 'h', 'i', 'j', 'k']

p str[-6]  # nil
p arr[-6]  # nil

p arr.fetch(-6)
# index -6 outside of array bounds: -5...5 (IndexError)

=begin
The element at indice `-6` is out-of-bounds. That's why the `str[-6]`
and `arr[-6]` calls return `nil`. And, on line 65, the `#fetch` method 
is invoked on `['g', 'h', 'i', 'j', 'k']` referenced by `arr` 
returns an `IndexError`. 
=end