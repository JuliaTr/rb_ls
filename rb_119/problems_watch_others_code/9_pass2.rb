# difficult

=begin
You are given an array of integers. Take that array and find 
an index N where the sum of the integers to the left of N is 
equal to the sum of the integers to the right of N. If there's
no index that would make this happen, return `-1`.

For example:
Let's say you're given the array `[1, 2, 3, 4, 3, 2, 1]`.
Your method will return the index 3, because at the 3rd position
of the array, the sum of the left side of the index `[1, 2, 3]`,
and the sum of the right side of the index `[3, 2, 1]` both 
equal `6`.

Another one:
You are given the array `[20, 10, -80, 10, 10, 15, 35]`.
At index `0` the left side is `[]`. `20` we don't include. So there
are no elements on the left side of `20`. 
The right side is `[10, -80, 10, 10, 15, 35]`.
They both are equal to 0 when added. (Empty array are equal to 0
in this problem.)
Index 0 is the place where the left side and right side are equal.


____________________________________

Thoughts:

- Create left array `left`
- Create right array `right`
- index = 0
- Put an element in `right` array
- Compare sum `left` and `right`
- If sum is NOT EQUAL
  - put an element in `left`
  - shift an element in `right`
  - Reassign index to index in original array of shifted element from `right`
- Return `index`

[1, 2, 3, 4, 3, 2, 1]
left = []
right = []

left = [1, 2, 3, 4, 3, 2, 1]
right = []


[20, 10, -80, 10, 10, 15, 35]
left = []
right = []
index = 0

loop
  left = []
  right = [10, -80, 10, 10, 15, 35]
  
loop
  left = [20]
  right = [-80, 10, 10, 15, 35]
index

[20, 10, -80, 10, 10, 15, 35] == 0
[20], 10, [-80], 10, 15, 35

=end

def find_even_index(arr)
  index = 0
  left = []

  loop do
    right = arr[index + 1..-1]

    break if left.sum == right.sum || right.empty?

    left << arr[index]
    index += 1
  end

  left.sum == arr[index + 1..-1].sum ? index : -1
end

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3
# All test cases return `true`.
