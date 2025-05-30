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



## The <=> Method:
### Experiments:
p 1 <=> 1  # 0
p 1 <=> 2  # -1
p 2 <=> 1  # 1


p 2 <=> 1       # 1
p 1 <=> 2       # -1
p 2 <=> 2       # 0
p 'b' <=> 'a'   # 1
p 'a' <=> 'b'   # -1
p 'b' <=> 'b'   # 0
p 1 <=> 'a'     # nil


p ['a', 1].sort  # comparison of String with 1 failed (ArgumentError)


p 'A' <=> 'a'  # -1
p '!' <=> 'A'  # -1

p 'b'.ord      # 98
p '}'.ord      # 125

p 'b' <=> '}'  # -1



## The `sort` method:
arr = [2, 5, 3, 4, 1]

result =  arr.sort do |a, b|
            a <=> b
          end

p result   # [1, 2, 3, 4, 5]


arr = [2, 5, 3, 4, 1]

result =  arr.sort do |a, b|
            b <=> a
          end

p result    # [5, 4, 3, 2, 1]
