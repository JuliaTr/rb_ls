=begin
What do the following method calls do (assume we reset `numbers` 
to the original array between method calls)?
=end

numbers = [1, 2, 3, 4, 5]
p numbers.delete_at(1)  # 2
p numbers               # [1, 3, 4, 5]

=begin
The mutating `Array#delete_at` deletes the value at indice passed to it
as an argumnet, modifying object in place. Here, `1` (indice) is passed as an argument to the 
`delete_at` method. So the deleted element is `2`, which indice 
is `1`.
=end


numbers = [1, 2, 3, 4, 5]
p numbers.delete(1)       # 1
p numbers                 # [2, 3, 4, 5]

=begin
The mutating `Array#delete` deletes the value passed to it
as an argumnet, modifying object in place. Here, `1` is passed as an argument to the 
`delete` method. So the deleted element is `1`.
=end
