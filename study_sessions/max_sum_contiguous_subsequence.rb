# 47. Given an array of integers, find the maximum sum of a contiguous subsequence of integers. 
# Note that an empty array is considered a valid subarray. If the input array is empty, return 0. 

=begin
- all possible subarrays
[[-1], [-1, 3], [-1, 3, 6], [-1, 3, 6, -3], [-1, 3, 6, -3, 2], [-1, 3, 6, -3, 2, 7], [-1, 3, 6, -3, 2, 7, -4]]
[[3], [3, 6], [3, 6, -3]....]
[[6], [6, -3]....]
...

- sum of elements of each subarray 
[-1, 2, 8, 5, 7, 14, 10]

- the largest sum  -> returned value for test case

- edge cases (sum is less than 0 or arr is empty)
=end

def max_sum(arr)
  # Arr is empty or all elements are negative integers
  return 0 if arr.empty? || arr.all? { |el| el < 0 }

  # All possible subarrays
  new_arr = []

  (0..arr.length - 1).each do |indice_first|
    (indice_first..arr.length - 1).each do |indice_last|
      new_arr << arr[indice_first..indice_last]
    end
  end

  # Sum of elements of each subarray
  arr_of_sums = new_arr.map { |subarr| subarr.inject(&:+) }

  # Largest sum
  max_sum = arr_of_sums.max
end

p max_sum([-1, 3, 6, -3, 2, 7, -4]) == 15   # true
p max_sum([-6, -3, -5]) == 0                # true
p max_sum([]) == 0                          # true
p max_sum([5, 4, 3]) == 12                  # true
p max_sum([7, 3, -2, 1, 4, -5]) == 13       # true
