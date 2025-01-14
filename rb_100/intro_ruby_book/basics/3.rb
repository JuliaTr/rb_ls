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
