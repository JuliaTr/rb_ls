# Find all pairs
def sequentialPairs(array)
  result = []

  (0..array.length - 1).each do |first| # 1, 2, 3, 4 numbers
    (first + 1..array.length - 1).each do |last|
      result << [array[first], array[last]]
    end 
  end 

  result
end

sample = [1, 2, 3, 4, 5]
p sequentialPairs(sample) == [[1, 2], [1, 3], [1, 4], [1, 5], 
                              [2, 3], [2, 4], [2, 5], 
                              [3, 4], [3, 5], 
                              [4, 5]]   # true



# 5. Generate all possible pairs of the array, but only in ascending order (that is, the element earlier in the argued array should come first in its subarray)

=begin
first: 0, 1, 2, 3
last: 1, 2, 3, 4
=end

# Learn from others:
def allAscendingPairs(array)
  result = []
  (0..array.length - 2).each do |first|
    (first + 1..array.length - 1).each do |last|
      result << [array[first], array[last]]
    end 
  end 
  result
end

array = [1, 2, 3, 4, 5]

p allAscendingPairs(array) == [[1, 2], [1, 3], [1, 4], [1, 5],
                                [2, 3], [2, 4], [2, 5],
                                [3, 4], [3, 5],
                                [4, 5]]   # true
