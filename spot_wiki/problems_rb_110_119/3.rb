=begin
Complete the solution so that it returns the number of times 
the `search_text` is found within the `full_text`.

_____________________________________________________________

PEDAC

P
Return an integer which represents of how many times `search_text` 
appear in `full_text`.

Rules/reqs:
- only one `search_text` provided
- the searched string can be anywhere in the `full_text` (beginning,
middle, end....)
- `search_text` and `full_text` consists of only alphabetic characters

D
Input: `full_text` string and `search_text` string
Output: integer
Intermediate: 
- input string - to count `search_text` strings in it
- range - to iterate over to find all substrings with the length
of `search_text`
- array - to store substrings from the iteration over range
- NOT needed (hash, booleans)

High-level:
- Iterate over a range of characters in the `full_text`
  to find all substrings with the length of `search_text`.
- Count substrings with occurrences of `search_text`
=end

## Improved solution:
# Use an integer counter to increment:
def solution(full_text, search_text)
  counter = 0
  offset = search_text.length - 1

  # Iterate over range of characters to count all substrings with
  # the length of `search_text`.
  # Loops with an exclusive range that stops before the last invalid
  # start index.
  (0...full_text.length - offset).each do |indice|
    if full_text[indice..indice + offset] == search_text
      counter += 1
    end
  end

  counter
end

p solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
# 2
p solution('aaabbbcccc', 'bbb') # should return 1
# 1

p solution('abcdeb','b') == 2    # true
p solution('abcdeb', 'a') == 1   # true
p solution('abbc', 'bb') == 1    # true



## Solution:
def solution(full_text, search_text)
  count = []
  number_of_chars_without_first = search_text.length - 1

  # Iterate over range of characters to find all substrings with
  # the length of `search_text`.
  (0...full_text.length).each do |indice|
    if full_text[indice..indice + number_of_chars_without_first] == search_text
      count << full_text[indice..indice + number_of_chars_without_first]
    end
  end

  # Count substrings:
  count.length
end

p solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
# 2
p solution('aaabbbcccc', 'bbb') # should return 1
# 1

p solution('abcdeb','b') == 2    # true
p solution('abcdeb', 'a') == 1   # true
p solution('abbc', 'bb') == 1    # true
