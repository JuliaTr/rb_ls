# The code below shows an example of a for loop. Modify the 
# code so that it only outputs i if i is an odd number.
for i in 1..100
  puts i
end

# Output:
# 1
# 2
# 3
# 4
# ....
# 98
# 99
# 100


## Solution
for i in 1..100
  puts i if i.odd?
end

# Output:
# 1
# 3
# 5
# 7
# ...
# 97
# 99
