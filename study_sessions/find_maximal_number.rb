# (recorded) review

=begin
PROBLEM
Given an integer `n`, find the maximal number you can obtain by 
deleting exactly one digit of the given number.

_________________________________________________________

- Find all combinations from input number with only one digit 
  removed
- Store combinations in array
- Sort combinations by descending order
=end


## Alternative:
# Refactored, `#max` method:
def combinations(num)
  combinations = []
  arr = num.to_s.chars

  arr.combination(arr.size - 1) do |combination| 
    combinations << combination.join.to_i
  end

  combinations
end

def delete_digit(num)
  combinations(num).max
end

# TEST CASES
puts delete_digit(791983) == 91983
puts delete_digit(152) == 52
puts delete_digit(1001) == 101
puts delete_digit(10) == 1
# All test cases return `true`



## Solutions:
def combinations(num)
  combinations = []

  num_arr = num.digits.reverse
  num_arr.combination(num_arr.size - 1) { |combination| combinations << combination }

  combinations
end

def convert_to_array_of_numbers(arr)
  arr.map do |subarray|
    subarray.each do |number|
      number.to_s
    end

    subarray.join.to_i
  end
end

def delete_digit(num)
  combinations = combinations(num)
  array_numbers = convert_to_array_of_numbers(combinations)
  array_numbers.sort_by { |number| -number }[0]
end

# TEST CASES
puts delete_digit(791983) == 91983
puts delete_digit(152) == 52
puts delete_digit(1001) == 101
puts delete_digit(10) == 1
# All test cases return `true`
