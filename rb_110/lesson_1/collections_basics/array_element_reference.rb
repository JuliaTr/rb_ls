arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g']

p arr[2, 3]     # ["c", "d", "e"]
p arr[2, 3][0]  # "c"

=begin
On line 4, the `[0]` is called on the return value of `arr[2, 3]`,
which is `["c", "d", "e"]`.
=end


arr = [1, 'two', :three, '4']

p arr.slice(3, 1)   # ["4"]
p arr.slice(3..3)   # ["4"]
p arr.slice(3)      # "4"
