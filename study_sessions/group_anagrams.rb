=begin
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

Write a program that prints out groups of words that are 
anagrams. Anagrams are words that have the same exact letters 
in them but in a different order. Your output should look 
something like this:

["demo", "dome", "mode"]
["neon", "none"]

_________________________________

Idea1:
- Sort each word in input array
- Find uniques words
- Create hash
- Iterate over input array
- Find all words which have the same characters as unique words
- Push them to hash values associated with key
- Output hash values
=end

## Solution
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

def group_anagrams(arr)
  hash = {}
  arr.each do |word|
    hash[word.chars.sort] = []
  end

  arr.each do |word|
    hash[word.chars.sort] << word if hash.key?(word.chars.sort)
  end

  hash.values.each { |subarray| p subarray }
end

group_anagrams(words)
# Output:
# ["demo", "dome", "mode"]
# ["none", "neon"]
# ["tied", "diet", "edit", "tide"]
# ["evil", "live", "veil", "vile"]
# ["fowl", "wolf", "flow"]
