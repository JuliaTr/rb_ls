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