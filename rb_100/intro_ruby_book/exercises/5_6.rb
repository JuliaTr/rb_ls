=begin
Exercise:
Get rid of 11. And append a 3.

Get rid of duplicates without specifically removing any one 
value.
=end

arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

## Get rid of 11:
arr.pop
p arr    # [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


## And append a 3.
arr.push(3)
p arr     # [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]

# arr << 3        # option
# p arr     # [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]

# arr.append(3)   # option
# p arr       # [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]


## Get rid of duplicates:
# Doesn't modify the calling object
p arr.uniq   # [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p arr        # [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]

# Modifies the calling object
arr.uniq!
p arr        # [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
