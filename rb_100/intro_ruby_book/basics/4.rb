=begin
Exercise:
Use the dates from the previous example and store them in an 
array. Then make your program output the same thing as exercise 3.
=end
# Solution:
dates = [1975, 2004, 2013, 2001, 1981]

puts dates[0]    # 1975
puts dates[1]    # 2004
puts dates[2]    # 2013
puts dates[3]    # 2001
puts dates[4]    # 1981

=begin
On line 7, a local variable `dates` is initialized and references
an Array object of a collection of Integer objects.

Array is data type with an ordered list of values with 
indices starting at 0.

On lines 9 - 13, array element references (`#[]`), which is a 
method in Ruby are used to retrieve values with indices starting 
at 0 through 4 from the `dates` array. They are passed as 
arguments to the `puts` method invocation, outputting `1975`, 
`2004`, `2013`, `2001`, and `1981` on each line, separately, 
the console.

The `#[]` returns the element at the specified indice. If indice
is out of range, `#[]` returns `nil`, which isn't happen in this 
code snippet.

The `puts` method returns `nil`, which isn't used here.
=end



### Experiments:
dates = [1975, 2004, 2013, 2001, 1981]

dates.each { |date| puts date }
# Output:
# 1975
# 2004
# 2013
# 2001
# 1981

=begin
On line 39, a local variable `dates` is initialized and references
an Array object with a collection of Integer objects.

On line 41, a block inclosed in `{}` is passed as an argument
to the `#each` method called on the array referenced by `dates`.
The block is executed one for each element in the array, in 
order from first to last.

The block's local variable `date` is a parameter to the block. On 
each iteration a value from the array is assigned to it. On
each iteration, an object referenced by `date` is passed as an 
argument to the `#puts` method invocation and output `1975`,
`2004`, `2013`, `2001`, and `1981` on each line, separately,
to the console.

The `#each` method iterates over the collection of an ordered 
list of objects of `dates`. The `#each` method returns the original 
array referenced by `dates`, and the `#puts` method returns 
`nil`, but these return values aren't used in this code snippet. 

The use of `{}` for the block suggests a single-line block,
which is a common Ruby style for short blocks.
=end
