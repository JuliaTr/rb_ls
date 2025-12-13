# easy

=begin
Create a method that takes a string argument and returns the 
character that occurs most often in the string. If there are
multiple characters with the same greatest frequency, return the 
one that appears first in the string. When counting characters, 
consider uppercase and lowercase versions to be the same.

_______________________________________________________________

- Create tally (hash with frequencies)
- Sort by value in descending order -> nested array
- Return the first nested array -> second value
=end

def most_common_char(str)
  str.chars
     .map(&:downcase)
     .tally
     .max_by { |_, val| val }[0]
end

p most_common_char('Mississippi') == 'i'
p most_common_char('Happy birthday!') == 'h'
p most_common_char('aaaaaAAAA') == 'a'

my_str = 'Peter Piper picked a peck of pickled peppers.'
p most_common_char(my_str) == 'p'

my_str = 'Peter Piper repicked a peck of repickled peppers. He did!'
p most_common_char(my_str) == 'e'
# All test cases return `true`.
