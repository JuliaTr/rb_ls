=begin
Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just 
described. Note that your sort will be "in-place"; that is, 
you will mutate the Array passed as an argument. You may 
assume that the Array contains at least 2 elements.
=end

def bubble_sort!(arr)
  counter = 0

  loop do
    arr_length = arr.length
    current_element = arr[counter]
    next_element = arr[counter + 1]

    if current_element > next_element
      p current_element
      p arr[counter + 2..-arr.length]

      arr[counter + 2..-arr_length] = current_element
      p arr.slice!(counter)
      p arr
    end

    counter += 1
    arr_length -= 1

    counter = 0 if counter + 1 == arr_length + 1

    break if arr == arr.sort
  end


  arr
end

# array = [5, 3]
# p bubble_sort!(array)
# p array == [3, 5]
# =begin
# $ ruby bubble_sort.rb
# 5
# []
# 5
# [3, 5]
# [3, 5]
# true
# =end

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]
=begin
$ ruby bubble_sort.rb
6
[]
6
[2, 6, 7, 1, 4]

7
[]
7
[2, 6, 1, 7, 4]

7
[]
7
[2, 6, 1, 4, 7]

6
[]
6
[2, 1, 6, 4, 7]

6
[]
6
[2, 1, 4, 6, 7]

2
[]
2
[1, 2, 4, 6, 7]

[1, 2, 4, 6, 7]
true
=end

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
# Sorted in alphabetical order
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# All test cases return `true`. 



## Possible solution:
def bubble_sort!(array)
  loop do
    swapped = false

    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
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
# Sorted in alphabetical order
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# All test cases return `true`.



## Experiments:

p 'a' <=> 'b'   # -1



def bubble_sort!(arr)
  counter = 0

  loop do
    break if (arr[0] == arr.min) && (arr[-1] == arr.max)

    arr_length = arr.length
    current_element = arr[counter]
    next_element = arr[counter + 1]

    if current_element > next_element
      arr[counter + 2..-arr_length] = current_element
      arr.slice!(counter)
    end

    counter += 1
    arr_length -= 1

    counter = 0 if counter + 1 == arr_length + 1
  end


  arr
end

array = [5, 3]
p bubble_sort!(array)         # [3, 5]
p array == [3, 5]             # true

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)         # [1, 2, 4, 6, 7]
p array == [1, 2, 4, 6, 7]    # true

# Doesn't work
array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
# Sorted in alphabetical order
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
