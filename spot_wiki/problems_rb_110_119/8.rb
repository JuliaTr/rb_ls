=begin
Repeated substring:
For a given nonempty string `s` find a minimum substring `t` and 
the maximum number `k`, such that the entire string `s` is equal to 
`t` repeated `k` times. The input string consists of lowercase 
latin letters. Your method should return an array: `[t, k]`.

_______________________________________________________________

PEDAC

P 
Return an array of a substring and how many times this substring
repeat to form a string.

Rules/reqs:
- there strings that don't have repeated substrings
- return a repeated substring and an integer
- only alphabetic characters in input string
- if there's no repeated substring, return a full string
- all substring occurrences we meet only once, return 1

D
Input: string
Output: array with a substring and an integer
Intermediate:
- hash - find occurrences
- array - store substrings
- range - move in iteration

High-level
- Iterate over an input string to
  - Find substrings
    ["a", "ab", "aba", "abab", "ababa", "ababab",
     "b", "ba", "bab", "baba", "babab",
     "a", "ab", "aba", "abab",
     "b", "ba", "bab",
     "a", "ab"]
- Find occurrences of a substring if string length is equally divisible on
  substring length.
- Find a key-value which key is a minimum pattern constitutes a 
  string, value is the number of occurences.
=end

def return_substrings(str)
  substrings = []

  str.each_char.with_index do |_, index_first|
    (index_first..str.length - 1).each do |index_next|
      substrings << str[index_first..index_next]
    end
  end

  substrings
end

def return_occurrences(substrings, str)
  occurrences = Hash.new(0)

  substrings.each do |substring|
    occurrences[substring] += 1 if str.length % substring.length == 0
  end

  occurrences
end

def repeating_substring_construct_input(h, str)
  selected_pairs = h.select { |k, v| k * v == str }
  selected_pairs.min_by { |k, _| k.length }
end

def min_substring(str)
  # Find substrings:
  substrings = return_substrings(str)

  # Find occurrences that of repeating in the string:
  occurrences = return_occurrences(substrings, str)

  # Find key-value pair which key is a minimum pattern 
  # constitutes a string:
  repeating_substring_construct_input(occurrences, str)
end

p min_substring("ababab") == ["ab", 3]
p min_substring("abcde") == ["abcde", 1]
