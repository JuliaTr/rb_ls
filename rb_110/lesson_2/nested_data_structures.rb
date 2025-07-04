## Reference collection elements:
arr = [[1, 3], [2]]

p arr[0]     # [1, 3]
p arr[0][1]  # 3




## Update collection elements:
arr = [[1, 3], [2]]
arr[1] = "hi there"
p arr  # [[1, 3], "hi there"]


arr = [[1, 3], [2]]
arr[0][1] = 5
p arr   # [[1, 5], [2]]


arr = [[1], [2]]
arr[0] << 3
p arr    # [[1, 3], [2]]


arr = [[1], [2]]
arr[0] << [3]
p arr    # [[1, [3]], [2]]




## Other nested structures:
arr = [{ a: 'ant' }, { b: 'bear' }]
arr[0][:c] = 'cat'
p arr    # [{:a=>"ant", :c=>"cat"}, {:b=>"bear"}]


arr = [['a', ['b']], { b: 'bear', c: 'cat' }, 'cab']

p arr[0]          # ["a", ["b"]]
p arr[0][1][0]    # "b"
p arr[1]          # { b: "bear", c: "cat" }
p arr[1][:b]      # "bear"
p arr[1][:b][0]   # "b"
p arr[2][2]       # "b"




## Variable reference for nested collections:
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



## Shallow copy:
arr1 = ["a", "b", "c"]

p arr1.object_id       # 60

arr2 = arr1.dup        # shallow copy
p arr2.object_id       # 80
arr2[1].upcase!

p arr1                 # ["a", "B", "c"]
p arr1.object_id       # 60

p arr2                 # ["a", "B", "c"]
p arr2.object_id       # 80


arr1 = ["abc", "def"]
p arr1.object_id       # 60

arr2 = arr1.clone      # shallow copy
p arr2.object_id       # 80
arr2[0].reverse!

p arr1                 # ["cba", "def"]
p arr1.object_id       # 60

p arr2                 # ["cba", "def"]
p arr2.object_id       # 80


### Experiment:
arr1 = ["a", "b", "c"]

p arr1.object_id    # 60

arr2 = arr1         # Variables as pointers concept
arr2[1].upcase!

p arr1              # ["a", "B", "c"]
p arr1.object_id    # 60

p arr2              # ["a", "B", "c"]
p arr2.object_id    # 60



arr1 = ["a", "b", "c"]
arr2 = arr1.dup

arr2.map! do |char|
  char.upcase
end

p arr1  # ["a", "b", "c"]
p arr2  # ["A", "B", "C"]



arr1 = ["a", "b", "c"]
arr2 = arr1.dup

arr2.each do |char|
  char.upcase!
end

p arr1   # ["A", "B", "C"]
p arr2   # ["A", "B", "C"]




## Freezing objects:
# `#clone` - the frozen state of the object:
arr1 = ["a", "b", "c"].freeze
arr2 = arr1.clone
arr2 << "d"
# can't modify frozen Array: ["a", "b", "c"] (FrozenError)



arr1 = ["a", "b", "c"].freeze
arr2 = arr1.dup
arr2 << "d"

p arr1  # ["a", "b", "c", "d"]
p arr2  # ["a", "b", "c"]



str = "abc".freeze
str << "d"
# can't modify frozen String: "abc" (FrozenError)



p 5.frozen?   # true



arr = [[1], [2], [3]].freeze
arr[2] << 4
p arr   # [[1], [2], [3, 4]]



arr = ["a", "b", "c"].freeze
arr[2] << "d"
p arr   # ["a", "b", "cd"]
