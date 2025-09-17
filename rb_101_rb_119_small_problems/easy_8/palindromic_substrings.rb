=begin
Write a method that returns a list of all substrings of a 
string that are palindromic. That is, each substring must 
consist of the same sequence of characters forwards as it 
does backwards. The return value should be arranged in the 
same sequence as the substrings appear in the string. 
Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in 
the previous exercise.

For the purposes of this exercise, you should consider all 
characters and pay attention to case; that is, "AbcbA" is a 
palindrome, but neither "Abcba" nor "Abc-bA" are. In 
addition, assume that single characters are not palindromes.
=end

def leading_substrings(str)
  result = []

  0.upto(str.size - 1) do |index|
    result << str[0..index]
  end

  result
end

def substrings(str)
  results = []

  (0...str.size).each do |start_index|
    this_substring = str[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end

  results
end

def palindromes(str)
  all_substrings = substrings(str)

  all_substrings.flatten.select do |word| 
    (word.reverse == word) && (word.size > 1)
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
# All test cases return `true`.



## Possible solution:
def leading_substrings(str)
  result = []

  0.upto(str.size - 1) do |index|
    result << str[0..index]
  end

  result
end

def substrings(str)
  results = []

  (0...str.size).each do |start_index|
    this_substring = str[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end

  results
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

def palindromes(string)
  all_substrings = substrings(string)
  results = []

  all_substrings.each do |substring|
    results << substring if palindrome?(substring)
  end

  results
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
# All test cases return `true`.



## Further exploration:
# Can you modify this method (and/or its predecessors) to 
# ignore non-alphanumeric characters and case?

ALPHABET = 'abcdefghijklmnopqrstuvwxyz'

def leading_substrings(str)
  result = []

  0.upto(str.size - 1) do |index|
    result << str[0..index]
  end

  result
end

def substrings(str)
  results = []

  (0...str.size).each do |start_index|
    this_substring = str[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end

  results
end

def alphanumeric_characters(string)
  string.split.map do |word|
    word.chars.select do |char|
      char if ALPHABET.include?(char.downcase)
    end.join
  end.join
end

def palindrome?(str)
  if str.match?(/[^a-zA-Z0-9]/)
    str = alphanumeric_characters(str)
  end
    
  str.downcase == str.reverse.downcase && str.size > 1
end

def palindromes(string)
  all_substrings = substrings(string)
  results = []

  all_substrings.each do |substring|
    results << substring if palindrome?(substring)
  end

  results
end

p palindromes('44abcd') == ['44']              # true
p palindromes('Madam') == ['Madam', 'ada']     # true
p palindromes('Abc-ba') == ['Abc-ba', 'bc-b']  # true
