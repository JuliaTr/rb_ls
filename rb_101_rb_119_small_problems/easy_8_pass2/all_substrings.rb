# =begin
# Write a method that returns a list of all substrings of a string. 
# The returned list should be ordered by where in the string the 
# substring begins. This means that all substrings that start at 
# position 0 should come first, then all substrings that start at 
# position 1, and so on. Since multiple substrings will occur at 
# each position, the substrings at a given position should be 
# returned in order from shortest to longest.

# You may (and should) use the leading_substrings method you wrote 
# in the previous exercise
# =end

# ## Solution (without helper)
# def substrings(str)
#   substrings = []

#   (0...str.size).each do |idx1|
#     (idx1...str.size).each do |idx2|
#       substrings << str[idx1..idx2]
#     end
#   end

#   substrings
# end

# p substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ] # true




## Possible solution
def leading_substrings(string)
  result = []

  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end

  result
end

# p leading_substrings('abcde')  # ["a", "ab", "abc", "abcd", "abcde"]

def substrings(string)
  results = []

  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    p this_substring
    p leading_substrings(this_substring)
    results.concat(leading_substrings(this_substring))
  end

  results
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
] # true

=begin
"abcde"
["a", "ab", "abc", "abcd", "abcde"]
"bcde"
["b", "bc", "bcd", "bcde"]
"cde"
["c", "cd", "cde"]
"de"
["d", "de"]
"e"
["e"]
["a", "ab", "abc", "abcd", "abcde", "b", "bc", "bcd", "bcde", "c", "cd", "cde", "d", "de", "e"]
=end
