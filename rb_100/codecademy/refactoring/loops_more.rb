# Exercise:
# Output even numbers.
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.each { |num| puts num unless num % 2 != 0 }

# Output:
# 2
# 4
# 6
# 8
# 10



# Exercise:
'L'.upto('P') { |letter| puts letter }

# Output:
# L
# M
# N
# O
# P
