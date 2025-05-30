## Sorting:
arr1 = [2, 5, 3, 4, 1]
arr2 = [1, 2, 3, 4, 5]

p arr1.sort   # [1, 2, 3, 4, 5]



### Experiment:
arr = ['', 'cc', 'd', 'aaaaa', 'bbbb']
result = arr.sort_by { |str| str.size }

p result   # ["", "d", "cc", "bbbb", "aaaaa"]
p arr      # ["", "cc", "d", "aaaaa", "bbbb"]



## Comparison:
arr = ['c', 'a', 'e', 'b', 'd']
p arr.sort   # ["a", "b", "c", "d", "e"]
