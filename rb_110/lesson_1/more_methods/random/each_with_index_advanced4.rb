numbers = [1, 2, 3, 4, 5]
collection = []

numbers.each_with_index do |num, idx|
  if idx.odd?
    numbers.shift
  else
    collection << [num, idx]
  end
end

p numbers # [3, 4, 5]
p collection  # [[1, 0], [4, 2]]



### Each iteration
# Iteration 1:
# num = 1, idx = 0
if 0.odd?  # false
  numbers.shift
else
  collection << [1, 0]
end

p numbers     # [1, 2, 3, 4, 5]
p collection  # [[1, 0]]


# Iteration 2:
# num = 2, idx = 1
if 1.odd?  # true
  1
else
  collection << [num, idx]
end

p numbers # [2, 3, 4, 5]
p collection # [[1, 0]]


# Iteration 3:
# num = 4, idx = 2 (not `num = 3`)
# Because after shifting, the array is now [2, 3, 4, 5], and we're 
# at index 2.

if 2.odd?   # false
  numbers.shift
else
  collection << [4, 2]
end

p numbers # [2, 3, 4, 5]
p collection # [[1, 0], [4, 2]]


# Iteration 4:
# num = 5, idx = 3
if 3.odd?  # true
  2
else
  collection << [num, idx]
end

p numbers  # [3, 4, 5]
p collection  # [[1, 0], [4, 2]]



### Experiments
numbers = [1, 2, 3, 4, 5]
collection = []

numbers.each_with_index do |num, idx|
  collection << num
end

p numbers     # [1, 2, 3, 4, 5]
p collection  # [1, 2, 3, 4, 5]
