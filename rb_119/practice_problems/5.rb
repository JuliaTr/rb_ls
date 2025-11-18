=begin
Create a method that takes a string argument and returns the 
character that occurs most often in the string. If there are
multiple characters with the same greatest frequency, return the 
one that appears first in the string. When counting characters, 
consider uppercase and lowercase versions to be the same.

P 
Return the most frequent character

Rule:
- case insensitive
- if many occurrences with the same value, return first in the string

D
Input: string
Output: string (1 char)
Intemediate:
- hash: find occurrences
- array: convert string
- integer: values in key-value pair
- range: ---
- string: ---

High-level:
- Find occurrences
- Select pair with the greatest value

=end

def occurrences(str)
  hash = Hash.new(0)
  str.each_char { |char| hash[char.downcase] += 1 }
  hash
end

def most_common_char(str)
  hash = occurrences(str)
  # p hash
  hash.max do |pair1, pair2| 
    # p '------------------'
    # p pair1
    # p pair2
    pair1[1] <=> pair2[1] 
  end[0]
end

p most_common_char('Hello World') == 'l'
=begin
$ ruby 5.rb
{"h"=>1, "e"=>1, "l"=>3, "o"=>2, " "=>1, "w"=>1, "r"=>1, "d"=>1}
"------------------"
["e", 1]
["h", 1]
"------------------"
["l", 3]
["h", 1]
"------------------"
["o", 2]
["l", 3]
"------------------"
[" ", 1]
["l", 3]
"------------------"
["w", 1]
["l", 3]
"------------------"
["r", 1]
["l", 3]
"------------------"
["d", 1]
["l", 3]
true
=end

p most_common_char('Mississippi') == 'i'
p most_common_char('Happy birthday!') == 'h'
p most_common_char('aaaaaAAAA') == 'a'

my_str = 'Peter Piper picked a peck of pickled peppers.'
p most_common_char(my_str) == 'p'

my_str = 'Peter Piper repicked a peck of repickled peppers. He did!'
p most_common_char(my_str) == 'e'
# All test cases return `true`.
