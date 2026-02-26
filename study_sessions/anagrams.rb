=begin
Where My Anagrams At?
Two words are anagrams of each other if they both contain the 
same letters.

Write a method that will find all the anagrams of a word from a 
list.
You will be given two inputs a word and an array with words.
You should return an array of all the anagrams or an empty array 
if there are none.


P: Find all anagrams from list for input word

D:
I: str, arr
O: arr
Int: hash, sort, compare

High-level
Idea1:
- Sort str (sorted_str)
- Sort each word in arr (hash: keys words, values: sorted letters)
- Select keys, which values are the same as sorted_str
=end

## Simplified logic:
# Direct selection
def anagrams(str, arr)
  sorted_str = str.downcase.chars.sort.join

  arr.select do |word|
    sorted_word = word.downcase.chars.sort.join
    sorted_str == sorted_word
  end
end

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada'])
# ['aabb', 'bbaa']

p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer'])
# ['carer', 'racer']

p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'Racer'])
# ['carer', 'Racer']

p anagrams('laser', ['lazing', 'lazy',  'lacer'])
# []




## Solution:
def build_hash(arr)
  hash = {}
  arr.each do |word|
    sorted_word = word.downcase.chars.sort.join
    hash[word] = sorted_word
  end
  hash
end

def anagrams(str, arr)
  sorted_str = str.downcase.chars.sort.join
  hash = build_hash(arr)
  hash.select { |_, val| val == sorted_str }.keys
end

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada'])
# ['aabb', 'bbaa']

p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer'])
# ['carer', 'racer']

p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'Racer'])
# ['carer', 'Racer']

p anagrams('laser', ['lazing', 'lazy',  'lacer'])
# []
