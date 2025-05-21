=begin
Exercise (​intermediate)​: Create a method `select_odd_indexed` 
that takes an array of integers and returns a new array 
containing only the elements at odd indices in the original 
array.
=end

def select_odd_indexed(arr)
  new_arr = []
  counter = 0

  loop do
    break if counter == arr.size

    current_number = arr[counter]

    if counter.odd?
      new_arr << current_number
    end

    counter += 1
  end

  new_arr
end

p select_odd_indexed([2, 4, 6, 8, 10]) == [4, 8] # true
p select_odd_indexed([1, 3, 5, 7, 9]) == [3, 7]  # true
p select_odd_indexed([]) == []                   # true
p select_odd_indexed([10]) == []                 # true
