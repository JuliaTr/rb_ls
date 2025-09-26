# 7. Generate all consecutive subarrays beginning from the first array element

=begin
-start eith the first element
-each next subarray has +1 element
=end

def firstSubarrays(arr)
  new_arr = []

  (0..arr.length - 1).each do |indice| # 0, 1, 2, 3, 4
    new_arr << arr[0..indice] # arr[0..0]
  end

  new_arr
end

sample = [1, 2, 3, 4, 5]

p firstSubarrays(sample) == [[1], [1, 2], [1, 2, 3], [1, 2, 3, 4], [1, 2, 3, 4, 5]]

