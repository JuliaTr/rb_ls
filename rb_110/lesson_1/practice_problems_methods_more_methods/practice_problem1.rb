# Exercise: What is the return value of the `select` method below? Why?
result = [1, 2, 3].select do |num|
  num > 5
  'hi'
end

p result   # [1, 2, 3]

=begin
The return value of the `select` method is `[1, 2, 3]`.

On line 4, the string `'hi'` is truthy in the `do..end` block 
(lines 2-5) passed as an argument to the `select` method invoked
on `[1, 2, 3]`.

The `select` method returns a new array with selected values 
upon iteration if the last eveluated expression (`'hi'` on line 4) 
returned by block is truthy. So, `select` selects each element 
from the original collection and returns (`[1, 2, 3]`).
=end
