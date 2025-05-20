=begin
Exercise: String Element Reference (Basic)
This code should output every character in the string in 
uppercase. Find and fix the bug.
=end

name = "joe's favorite color is blue"
counter = 0

loop do
  break if counter = name.size
  puts name[counter].upcase
  counter += 1
end

p name # "joe's favorite color is blue"



## Bug fix:
name = "joe's favorite color is blue"
counter = 0

loop do
  break if counter == name.size
  puts name[counter].upcase
  counter += 1
end

p name

# Output:
# J
# O
# E
# '
# S
 
# F
# A
# V
# O
# R
# I
# T
# E
 
# C
# O
# L
# O
# R
 
# I
# S
 
# B
# L
# U
# E
# "joe's favorite color is blue"
