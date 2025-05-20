# Exercise (​basic)​: Find the errors in the following code that 
# attempts to use string, array, and hash element reference.
str = "launch School"
arr = ['l', 'a', 'u', 'n', 'c', 'h']
hsh = { course: 'RB110', language: 'Ruby', lesson: 1 }

puts str[2, 4]       # unch
puts arr[-7]         # (empty line); out of bounds
puts hsh[:Language]  # (empty line)



# Debugged:
str = "Launch School"
arr = ['l', 'a', 'u', 'n', 'c', 'h']
hsh = { course: 'RB110', language: 'Ruby', lesson: 1 }

puts str[0, 6]        # Launch
puts arr[-6]          # l
puts hsh[:language]   # Ruby
