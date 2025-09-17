=begin
Write a method that returns a list of all substrings of a 
string that start at the beginning of the original string. 
The return value should be arranged in order from shortest 
to longest substring.

__________________________________________________________

str[0..index]
=end

def leading_substrings(str)
  arr = str.chars
  new_arr = []
  index = 0
  index_next_element = 0

  arr.each do |substring|
    substring = arr[index..index_next_element]
    new_arr << substring
    index_next_element += 1
  end

  new_arr.map { |subarray| subarray.inject(:+) }
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
# All test cases retturn `true`.



## Posiible solution:
def leading_substrings(string)
  result = []

  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end

  result
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
# All test cases retturn `true`.
