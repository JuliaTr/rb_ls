# 1. Generate all sequential pairs of the array

=begin
Notes:
current element pair with the next element
=end

# Option 1:
def sequentialPairs(arr)
  new_arr = []
  counter = 0

  loop do
    current_element = arr[counter]
    next_element = arr[counter + 1]

    new_arr << [current_element, next_element]
    
    counter += 1
    break if counter + 1 >= arr.size
  end

  new_arr
end

sample = [1, 2, 3, 4, 5]
p sequentialPairs(sample) == [[1, 2], [2, 3], [3, 4], [4, 5]]
# true



# Option 2:
def sequentialPairs(arr)
  new_arr = []

  (0..arr.length - 2).each do |indice|
    new_arr << [arr[indice], arr[indice + 1]]
  end

  new_arr
end

sample = [1, 2, 3, 4, 5]
p sequentialPairs(sample) == [[1, 2], [2, 3], [3, 4], [4, 5]]
# true
