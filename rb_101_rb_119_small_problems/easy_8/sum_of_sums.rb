=begin
Write a method that takes an Array of numbers and then 
returns the sum of the sums of each leading subsequence for 
that Array. You may assume that the Array always contains 
at least one number.
=end

def sum_of_sums(arr)
  index_first_number = 0
  index_next_number = 0

  nested_arr = arr.map do |number|
    number = arr[index_first_number..index_next_number]
    index_next_number += 1
    number
  end

  nested_arr.map { |subarray| subarray.inject(:+) }.inject(:+)
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
# All test cases return `true`.



## Possible solution:
# Option 1:
def sum_of_sums(numbers)
  sum_total = 0
  accumulator = 0

  numbers.each do |num|
    accumulator += num
    sum_total += accumulator
  end

  sum_total
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
# All test cases return `true`.


# Option 2:
def sum_of_sums(numbers)
  sum_total = 0

  1.upto(number.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end

  sum_total
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
# All test cases return `true`.
