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

## Refactored:
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

def sort_string_chars(str)
  str.chars.sort
end

def create_hash(arr)
  hash = {}
  arr.each { |array| hash[array] = [] }
  hash
end

def group_anagrams(arr)
  sorted = arr.map { |word| sort_string_chars(word) }
  unique = sorted.uniq
  hash = create_hash(unique)

  arr.each do |word|
    hash[sort_string_chars(word)] << word if unique.include?(sort_string_chars(word))
  end

  hash.values.each { |array| p array }
end

group_anagrams(words)
# Output:
# ["demo", "dome", "mode"]
# ["none", "neon"]
# ["tied", "diet", "edit", "tide"]
# ["evil", "live", "veil", "vile"]
# ["fowl", "wolf", "flow"]



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



## Possible solution:
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each do |word|
  key = word.split('').sort.join

  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

p result
# {"demo"=>["demo", "dome", "mode"], "enno"=>["none", "neon"], 
# "deit"=>["tied", "diet", "edit", "tide"], 
# "eilv"=>["evil", "live", "veil", "vile"], 
# "flow"=>["fowl", "wolf", "flow"]}

result.each_value { |val| p val }
=begin
["demo", "dome", "mode"]
["none", "neon"]
["tied", "diet", "edit", "tide"]
["evil", "live", "veil", "
=end



## Experiments:
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each do |word|
  key = word.split('').sort.join

  if result.has_key?(key)
  else
    result[key] = [word]
  end
  break
end

p result   # {"demo"=>["demo"]}
