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

## More idiomatic version:
# Chaining on `Enumerator`
def combinations(num)
  arr = num.to_s.chars

  # `map` is used to not create `combinations = []`
  arr.combination(arr.size - 1).map do |combination|
  end
end

def delete_digit(num)
  combinations(num).max
end

puts delete_digit(791983) == 91983
puts delete_digit(152) == 52
puts delete_digit(1001) == 101
puts delete_digit(10) == 1
# All test cases return `true`



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



# Without `#combination` method:
def delete_digit(num)
  arr = num.to_s

  combinations = (0...arr.length).map do |idx|
    (arr[0...idx] + arr[idx + 1..-1]).to_i
  end

  combinations.max
end

# TEST CASES
p delete_digit(791983) == 91983
puts delete_digit(152) == 52
puts delete_digit(1001) == 101
puts delete_digit(10) == 1
# All test cases return `true`



# Without `#combination` break down:
def delete_digit(num)
  arr = num.to_s

  combinations = (0...arr.length).map do |idx|
    # Characters with current `idx` are skipped

    before = arr[0...idx]     # chars before current `idx`
    # p before

    after = arr[idx + 1..-1]  # chars from current `idx + 1`
    # p after

    combination = before + after
    combination.to_i
  end

  combinations.max
end

# TEST CASES
puts delete_digit(791983) == 91983
=begin
Iteration 1:
idx = 0
arr[idx] = 7 (skipped)
""          # arr[0...idx]
"91983"

Iteration 2:
idx = 1
arr[idx] = 9 (skipped)
"7"
"1983"

"79"
"983"

"791"
"83"

"7919"
"3"

"79198"
""        # arr[idx + 1..-1]
true
=end

=begin
irb(main):001:0> arr = [1, 2, 3]
=> [1, 2, 3]
irb(main):002:0> arr[0...0]
=> []
irb(main):003:0> arr[0...1]
=> [1]
irb(main):004:0> [] + [2, 3]
=> [2, 3]
=end
