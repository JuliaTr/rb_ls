=begin
Exercise:
Write a program that uses a hash to store a list of movie 
titles with the year they came out. Then use the `puts`
command to make your program print out the year of each 
movie to the screen. The output for your program should 
look something like this.
=end

# Solution:
movies = {
  a: 1975,
  b: 2004,
  c: 2013,
  d: 2001,
  e: 1981
}

puts movies[:a]   # 1975
puts movies[:b]   # 2004
puts movies[:c]   # 2013
puts movies[:d]   # 2001
puts movies[:e]   # 1981

=begin
On line 11, a local variable `movies` is initialized and references 
a Hash object with a collection of key-value pairs.

On lines 19 - 23, hash element references (`#[]`) are used to 
retrieve values from the `movies` hash. They are passed as 
arguments to the `puts` method invocation, outputting `1975`, 
`2004`, `2013`, `2001`, and `1981` on each line, separately, 
to the console. 

The `puts` method returns `nil`, but it's not used here.
=end


### Experiments:
movies.each { |_, value| puts value }

# Output:
# 1975
# 2004
# 2013
# 2001
# 1981
