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
movies = {
  a: 1975,
  b: 2004,
  c: 2013,
  d: 2001,
  e: 1981
}

movies.each { |_, value| puts value }

# Output:
# 1975
# 2004
# 2013
# 2001
# 1981

=begin
On line 40, a local variable `movies` is initialized and references
a Hash object with a collection of key-value pairs.

On line 48, a block enclosed in `{}` is passed to the `#each` method
called on the object referenced by `movies`. 

The `#each` method iterates over the key-value pairs of 
`movies`. It returns the original hash referenced by `movies`.
This return value isn't used in the code snippet. 

The `|_, value|` are the block parameters. The 
underscore (`_`) signifies the absence of a parameter for 
the key. On each iteration a value from the hash is assigned 
to `value`. Inside the block, on each iteration an object 
referenced by `value` is passed as an argument to the `puts` 
method invocation and output `1975`, `2004`, `2013`, `2001`, 
and `1981` on each line, separately, to the console.

The use of `{}` for the block suggests a single-line block, 
which is a common Ruby style for short blocks.
=end
