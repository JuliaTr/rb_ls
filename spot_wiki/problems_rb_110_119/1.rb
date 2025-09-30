=begin
In this exercise, you need to count lowercase letters in a 
given string and return the letter count in a hash with 
'letter' as key and count as 'value'. The key must be 'symbol' 
instead of string in Ruby.

_______________________________________________________________

PEDAC
P 
Return a hash, where key is a character (symbol) and value is 
a count of occurrence of this character

Rules/reqs:
- each character should be converted to a symbol to be a key in 
  a hash
- string contain only alphabetic characters
- values are integers
- the key-value pairs are in aphabetical order sorted by keys

D
Input: string of alphabetic characters
Output: hash with keys as symbols, values as integers
Intermediate:
- string in input to iterate directly on it
- hash with symbols (keys), integers (values)
- nested array - sorted hash by keys
- NOT need (arrays, booleans, ranges)

High-level strategies:
- Create a hash with 0 value
- Iterate over a string
  - create a key-value pair with a count of character.
  (if it doesn't exist it yet, if it does increment the value)
- Sort hash by keys in alphabetical order
- Convert sorted hash (nested array) into hash

Algorithm:
New hash with value 0
Iterate over a string
    `char_to_sym` = Character convert to symbol
    Create a key-value pair (key - symbol) incrementing a value by 1
Sort new hash by keys, return nested array
Convert nested array into hash, return hash
=end

def letter_count(str)
  # New hash for output:
  count_chars = Hash.new(0)

  # Iterate over string to count characters:
  str.each_char do |char|
    char_to_sym = char.to_sym
    count_chars[char_to_sym] += 1
  end

  # Sort newly created hash (return nested array):
  sorted_hash = count_chars.sort_by { |k, _| k }  # nesed array
  
  # Nested array convert to hash:
  sorted_hash.to_h
end

p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
# All test cases return `true`.
