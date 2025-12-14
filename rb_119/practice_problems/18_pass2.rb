# took 40 mins

=begin
Create a method that takes an array of integers as an argument. 
Determine and return the index N for which all numbers with an 
index less than N sum to the same value as the numbers with an 
index greater than N. If there is no index that would make this 
happen, return -1.

If you are given an array with multiple answers, return the 
index with the smallest value.

The sum of the numbers to the left of index 0 is 0. Likewise, 
the sum of the numbers to the right of the last element is 0.

________________________________

Idea1:
- Create left empty array
- Create right empty array
- Put integers from input array to right array
- Put integers to the left array
- Compare sum

=end

=begin
  left = [1, 2, 4]
  p left.sum

  return_value = arr[3]
  p return_value

  index = 4
  p arr[index..-1]

  arr[index..-1].sum

  left.sum == arr[index..-1].sum
=end

def equal_sum_index(arr)
  left = []
  left_index = 0

  return_index = 0

  return return_index if left.sum == arr[1..-1].sum

  right_index = 1
  loop do
    right = arr[right_index..-1]

    if right == nil
      return -1
    elsif left.sum == right.sum
      return return_index
    end

    left << arr[left_index]

    left_index += 1
    right_index += 1
    return_index += 1
  end

  return_index
end

p equal_sum_index([1, 2, 4, 4, 2, 3, 2]) == 3
p equal_sum_index([7, 99, 51, -48, 0, 4]) == 1
p equal_sum_index([17, 20, 5, -60, 10, 25]) == 0
p equal_sum_index([0, 2, 4, 4, 2, 3, 2]) == -1

# The following test case could return 0 or 3. Since we're
# supposed to return the smallest correct index, the correct
# return value is 0.
p equal_sum_index([0, 20, 10, -60, 5, 25]) == 0
# All test cases return `true`



## Alternative:
def equal_sum_index(arr)
  (0...arr.size).each do |index|
    left_side = arr[0...index]
    right_side = arr[index + 1..-1]

    return index if left_side.sum == right_side.sum
  end

  -1
end

p equal_sum_index([1, 2, 4, 4, 2, 3, 2]) == 3
p equal_sum_index([7, 99, 51, -48, 0, 4]) == 1
p equal_sum_index([17, 20, 5, -60, 10, 25]) == 0
p equal_sum_index([0, 2, 4, 4, 2, 3, 2]) == -1

# The following test case could return 0 or 3. Since we're
# supposed to return the smallest correct index, the correct
# return value is 0.
p equal_sum_index([0, 20, 10, -60, 5, 25]) == 0
# All test cases return `true`



## Experiments:
def equal_sum_index(arr)
  (0...arr.size).each do |index|
    left_side = arr[0...index]
    p left_side

    right_side = arr[index + 1..-1]
    p right_side
  end
end

p equal_sum_index([1, 2, 4, 4, 2, 3, 2]) == 3
=begin
[]
[2, 4, 4, 2, 3, 2]
[1]
[4, 4, 2, 3, 2]
[1, 2]
[4, 2, 3, 2]
[1, 2, 4]
[2, 3, 2]
[1, 2, 4, 4]
[3, 2]
[1, 2, 4, 4, 2]
[2]
[1, 2, 4, 4, 2, 3]
[]
0...7
=end



def equal_sum_index(arr)
  (0...arr.size).each do |index|
    p left_side = arr[0...index]
  end
end

p equal_sum_index([1, 2, 4, 4, 2, 3, 2])
=begin
[]
[1]
[1, 2]
[1, 2, 4]
[1, 2, 4, 4]
[1, 2, 4, 4, 2]
[1, 2, 4, 4, 2, 3]
0...7


irb(main):001:0> arr = [1, 2, 3]
=> [1, 2, 3]
irb(main):002:0> arr[0...0]
=> []
irb(main):003:0> arr[0...1]
=> [1]
=end
