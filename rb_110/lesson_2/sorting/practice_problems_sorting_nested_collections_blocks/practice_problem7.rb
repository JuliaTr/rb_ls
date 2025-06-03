=begin
Practice Problem 7
Given this code, what would be the final values of `a` and `b`? 
=end

a = 2
b = [5, 8]
arr = [a, b]    # arr = [2, [5, 8]]

p arr[0] += 2     # arr[0] = arr[0] + 2;
# 4
p arr   # [4, [5, 8]]
p a     # 2

p arr[1][0] -= a  # arr[1][0] = arr[1][0] - 4
# 3
p arr   # [4, [3, 8]]
p b     # [3, 8]

p a  # 2
p b  # [3, 8]



## Experiments:
a = [1, 3]
b = [2]
arr = [a, b]
p arr   # [[1, 3], [2]]

a[1] = 5
p arr  # [[1, 5], [2]]
p a    # [1, 5]

arr[0][1] = 8
p arr  # [[1, 8], [2]]
p a    # [1, 8]
