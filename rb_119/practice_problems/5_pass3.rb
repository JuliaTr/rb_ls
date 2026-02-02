=begin
Create a method that takes a string argument and returns the 
character that occurs most often in the string. If there are 
multiple characters with the same greatest frequency, return 
the one that appears first in the string. When counting 
characters, consider uppercase and lowercase versions to be the 
same.
=end

## Refactored:
def most_common_char(str)
  arr = str.downcase.chars
  letters = arr.select { |char| char.match?(/[a-z]/) }
  hash = letters.tally

  max_val = hash.values.max
  arr.each do |char|
    return char if char.match?(/[a-z]/) && hash[char] == max_val 
  end
end

p most_common_char('Hello World') == 'l'
p most_common_char('Mississippi') == 'i'
p most_common_char('Happy birthday!') == 'h'
p most_common_char('aaaaaAAAA') == 'a'

my_str = 'Peter Piper picked a peck of pickled peppers.'
p most_common_char(my_str) == 'p'

my_str = 'Peter Piper repicked a peck of repickled peppers. He did!'
p most_common_char(my_str) == 'e'
# The above tests should each print true.



## Solution:
def most_common_char(str)
  # All chars
  arr = str.downcase.chars

  # Only letters
  letters = arr.select { |char| char.match?(/[a-z]/) }

  # Find occurrences
  hash = letters.tally

  # Find max value
  max_val = hash.values.max

  # Find key-value pair with max value
  max_val_hash = hash.select { |_, val| val == max_val }

  # Find indexes for each pax with max value
  arr_indexes = max_val_hash.keys.map { |val| arr.index(val) }

  # Find the lowest index
  first_idx = arr_indexes.sort[0]

  # Retrieve the value associated with the lowest index
  arr[first_idx]
end

p most_common_char('Hello World') == 'l'
p most_common_char('Mississippi') == 'i'
p most_common_char('Happy birthday!') == 'h'
p most_common_char('aaaaaAAAA') == 'a'

my_str = 'Peter Piper picked a peck of pickled peppers.'
p most_common_char(my_str) == 'p'

my_str = 'Peter Piper repicked a peck of repickled peppers. He did!'
p most_common_char(my_str) == 'e'
# The above tests should each print true.
