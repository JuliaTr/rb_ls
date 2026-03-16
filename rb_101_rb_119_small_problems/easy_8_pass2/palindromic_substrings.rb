=begin
Write a method that returns a list of all substrings of a string 
that are palindromic. That is, each substring must consist of 
the same sequence of characters forwards as it does backwards. 
The return value should be arranged in the same sequence as the 
substrings appear in the string. Duplicate palindromes should be 
included multiple times.

You may (and should) use the substrings method you wrote in the 
previous exercise.

For the purposes of this exercise, you should consider all 
characters and pay attention to case; that is, "AbcbA" is a 
palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, 
assume that single characters are not palindromes.



p
Return list of all substrings of a string that are palindromic

e
r
- list of all substrings of a string that are palindromic
- each substring must consist of the same sequence of characters 
  forwards as it does backwards
- return value should be arranged in the same sequence as the 
  substrings appear in the string (order important)
- Duplicate palindromes should be included multiple times 
  (include all of them)
- case-sensitive
- single characters are not palindromes
- non-alphanumeric characters are included

d
i: string
o: array of palindromic strings
I: substrings, new array for substrings, check if palindrome (reverse substring),
  convert substring to arr to reverse it, boolean (comparing), integer for indexes to generate substrings, rnages for iteration

hl
Idea: 
- generate substrings
- define palindromes

a

- Iterate over ranges (`idx1`)
  - Iterate from idx1 + 1 (`idx2`) to end of the string
    - str[idx1..idx2] if str[idx1..idx2] reversed SAME as str[idx1..idx2]

'madam'  ['madam', 'ada']
  ^
  'madam'
     ^

str[idx1..idx2]

['ma', 'mad'...
'ad']
=end

## Solution without helper
def palindromes(str)
  palindromes = []

  (0...str.size).each do |idx1|
    (idx1 + 1...str.size).each do |idx2|
      substring = str[idx1..idx2]
      palindromes << substring if substring.reverse == substring
    end
  end

  palindromes
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
# All test cases print `true`.




## Solution with helper methods
def leading_substrings(string)
  result = []

  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end

  result
end

def substrings(str)
  substrings = []

  (0...str.size).each do |start_index|
    this_substring = str[start_index..-1]
    substrings.concat(leading_substrings(this_substring)) 
  end

  substrings
end

def palindromes(str)
  substrings = substrings(str)

  substrings.select do |substring| 
    substring.reverse == substring if substring.size > 1
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
# All test cases print `true`.




## Possible solution
def leading_substrings(string)
  result = []

  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end

  result
end

def substrings(str)
  substrings = []

  (0...str.size).each do |start_index|
    this_substring = str[start_index..-1]
    substrings.concat(leading_substrings(this_substring)) 
  end

  substrings
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
# All test cases print `true`.
