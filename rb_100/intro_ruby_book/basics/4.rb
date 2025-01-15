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
