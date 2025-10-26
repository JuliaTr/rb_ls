=begin
You are given an array of integers. Take that array and find 
an index N where the sum of the integers to the left of N is 
equal to the sum of the integers to the right of N. If there's
no index that would make this happen, return `-1`.

For example:
Let's say you're given the array `[1, 2, 3, 4, 3, 2, 1]`.
Your method will return the index 3, because at the 3rd position
of the array, the sum of the left side of the index `[1, 2, 3]`.
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

____________________________________________________________

P
We start are index 0. Compare everything on the right side with
everything before index 0. See if these two values equal. Empty
arrays equal `0`.

Take that array and find an index N where the sum of the 
integers to the left of N is equal to the sum of the 
integers to the right of N.

- Go through the array, starting at index 0.
- Find the sum of integers to the left side of the array.
- Find the sum of integers to the right side.
- If they are equal, return the index.
  - Empty arrays are equal to 0.
- If not, move on to the next index.

If there's no index that would make this happen, return `-1`.

eg. 
index 0
left_array = [] (automatically is empty)
left_array sum is `0`
right_array = arr[1]..arr.last

eg.
index 1
left_array = arr[0]..arr[1 -1]
right_array = arr[2]..arr.last


index n = 1
left_array = arr[0..(n-1)]
right_array = arr[n + 1...arr.length]
arr[n + 1...arr.length]

Find out if sums are equal:
equal_sum = left_array.reduce(:+) == right_array.reduce(:+)
if equal_sum
  return n
else
  n += 1
end

irb(main):004:0> [].reduce(:+)
=> nil

=end

def find_even_index(arr)
  n = 0

  loop do
    if n == 0
      left_array = []
    else
      left_array = arr[0..n - 1]
    end
    right_array = arr[n + 1...arr.length]

    # if the array is empty make it equal to `0`
    left_sum = 0
    right_sum = 0

    left_sum = left_array.reduce(:+) unless left_array.empty?
    right_sum = right_array.reduce(:+) unless right_array.empty?

    if left_sum == right_sum
      return n
    else
      n += 1
    end

    break if n == arr.size
  end

  -1
end

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3
# All test cases print `true`.
