=begin
Write a method that takes an Array of numbers, and returns an 
Array with the same number of elements, and each element has 
the running total from the original Array.

_____________________________________________________________

PEDAC

Original array:
[2, 5, 13]
Array with running totals:
[2, 7, 20]
2 = 2 -there's no any number before it
7 = 2 + 5
20 = 2 + 5 + 13

Each current number add to the previous one
=end

def running_total(array)
  new_array = []

  array.each_index do |index|
    if index == 0
      new_array << array[index]
    elsif index > 0
      sum_of_previous_numbers = array[0..index].inject(:+)
      new_array << sum_of_previous_numbers
    end
  end

  new_array
end

p running_total([2, 5, 13]) == [2, 7, 20]                    # true
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67] # true
p running_total([3]) == [3]                                  # true
p running_total([]) == []                                    # true



## Experiments:
p [1, 2, 3][1]      # 2
p [1, 2, 3][1 - 1]  # 1



## Possible solution:
def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

p running_total([2, 5, 13]) == [2, 7, 20]                    # true
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67] # true
p running_total([3]) == [3]                                  # true
p running_total([]) == []                                    # true



## Further exploration:
def running_total(array)
  sum = 0
  array.each_with_object([]) do |current_value, new_array|
    sum += current_value
    new_array << sum
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]                    # true
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67] # true
p running_total([3]) == [3]                                  # true
p running_total([]) == []                                    # true
