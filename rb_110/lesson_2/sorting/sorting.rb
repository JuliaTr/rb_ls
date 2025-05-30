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



arr = [2, 5, 3, 4, 1]

result = arr.sort do |a, b|
  puts "a is #{a} and b is #{b}"
  a <=> b
end

p result

# Output:
# a is 2 and b is 5
# a is 5 and b is 3
# a is 2 and b is 3
# a is 5 and b is 4
# a is 3 and b is 4
# a is 5 and b is 1
# a is 4 and b is 1
# a is 3 and b is 1
# a is 2 and b is 1
# [1, 2, 3, 4, 5]



arr = ['arc', 'bat', 'cape', 'ants', 'cap']
p arr.sort  # ['ants', 'arc', 'bat', 'cap', 'cape']



arr = [
  ['a', 'cat', 'b', 'c'],
  ['b', 2],
  ['a', 'car', 'd', 3],
  ['a', 'car', 'd']
]

p arr.sort 
# [["a", "car", "d"], ["a", "car", "d", 3], 
# ["a", "cat", "b", "c"], ["b", 2]]



arr = [
  ['a', 'cat', 'b', 'c'],
  ['a', 2],   # issue is here
  ['a', 'car', 'd', 3],
  ['a', 'car', 'd']
]

p arr.sort # comparison of Array with Array failed (ArgumentError)




## The `sort_by` method:
arr = ['cot', 'bed', 'mat']

result =  arr.sort_by do |word|
            word[1]
          end

p result   # ["mat", "bed", "cot"]
