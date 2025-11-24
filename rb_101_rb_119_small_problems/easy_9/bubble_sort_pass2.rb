=begin
Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just 
described. Note that your sort will be "in-place"; that is, 
you will mutate the Array passed as an argument. You may 
assume that the Array contains at least 2 elements.
=end

## Possible solution
def bubble_sort!(array)
  loop do # until array completely sorted
    swapped = false

    # Iterate over index from 1 (second element of the array) 
    # upto array size - 1
    1.upto(array.size - 1) do |index|
      #  Do nothing, if previous element is LESS or EQUAL element 
      # with current index
      next if array[index - 1] <= array[index]

      # Otherwise:
      # Swap previous and current elements
      array[index - 1], array[index] = array[index], array[index - 1]
      # Reassign `swapped` variable to `true`
      swapped = true
    end

    break unless swapped  # the same as `break if swapped == false`
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# All test cases return `true`
