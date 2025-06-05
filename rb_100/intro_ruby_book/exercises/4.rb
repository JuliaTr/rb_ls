=begin
Exercise:
Append 11 to the end of the original array. Prepend 0 to 
the beginning.
=end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

## Append:
arr.push(11)
p arr  # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

# arr << 11      # option
# p arr  # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]


## Prepend:
arr.prepend(0)
p arr  # [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

arr.unshift(0)  # option
p arr    # [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
