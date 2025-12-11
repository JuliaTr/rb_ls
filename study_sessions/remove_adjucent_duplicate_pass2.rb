# difficult

=begin
You are given a string 's' consisting of lowercase letters. 
A duplicate removal consists of choosing two adjacent and equal 
letters and removing them.

We repeatedly make duplicate removals on 's' until we no longer 
can.

Write a method that returns a string after all duplicate 
letters are removed.

_______________________________

Rules:
- return new string

Idea1: ---
- Create a copy of input
- Create `result`
- Iterate over input string

  - Check if next character is the same
    - Subtitute by index this and next character (' ') in copied str 

"aaybbyz"
       ^
"  y  yz"

"abbca"
"a  ca"

"azxxzy"
"az  zy"

"abbaca"
"a  aca"

- Go over modified copied string and select characters
- Return `result`


Idea2: ---
"aaybbyz"

- Generate substrings with 1-elements and with pairs
["aa", "y", "bb", "y", "z"]

- Join substrings which don't have duplicated elements
"yyz"

- Create a copy of joined string

- Iterate over joined string
"yyz"
  ^
- Substritute duplicates with `' '`


Idea3:
loop

- Generate substrings with 1-elements and with pairs (helper)
Input: string
Output: array of strings
["y", "y", "z"]  - loop 1
["yy", "z"]      - loop 2

"aaybbyz"
  ^
"a"
 ^

Not include duplicates.

- Join substrings which don't have duplicated elements
Input: new array of substrings
Output: string
"yyz"

(exit condition: if joined string characters are not duplicated one near each other)
same = false
- Iterate from 0 undex upto atring size - 2 (`index`)
  - if current character is NOT SAME as next character
    - same = true

break if `true`
=end

## Solution (Idea3):
def substrings(str)
  result = []

  0.upto(str.size - 1) do |index|
    current_item = str[index]

    if (index == 0 || current_item != str[index - 1]) &&
        current_item != str[index + 1]
      result << current_item
    end
  end

  result
end

def remove_duplicates(str)
  loop do 
    substrings = substrings(str)

    new_arr = substrings.map.with_index do |element, index|
      element != substrings[index + 1]
    end

    return substrings.join if new_arr.all? || new_arr.size < 2

    str = substrings.join
  end
end

p remove_duplicates("aaybbyz") == "z"
p remove_duplicates("a") == "a"
p remove_duplicates("abbca") == "aca"
p remove_duplicates("aabbcc") == ""
p remove_duplicates("aderg") == "aderg"
p remove_duplicates("azxxzy") == "ay"
p remove_duplicates("abbaca") == "ca"
# All test cases return `true`.




=begin
Idea4:
Modify input string. Return the same.

- Create new array of unique characters
- Iterate over each character of unique characters
- Check if current doubled char exist in input string
- Substitute current doubled char

=end

def remove_duplicates(str)
  str_chars = str.chars
  
  loop do
    str_chars.uniq.each do |char|
      doubled = char * 2
      if str.include?(doubled)
        str = str.sub!(doubled, '')
      end
    end

    break unless str_chars.any?{ |char| str.include?(char * 2) }
  end

  str
end

p remove_duplicates("aaybbyz") == "z"
p remove_duplicates("a") == "a"
p remove_duplicates("abbca") == "aca"
p remove_duplicates("aabbcc") == ""
p remove_duplicates("aderg") == "aderg"
p remove_duplicates("azxxzy") == "ay"
p remove_duplicates("abbaca") == "ca"
# All test cases return `true`.



## Experiments:

''.size   # 0
' '.size  # 1

=begin
irb(main):003:0> "aaca".delete("a")
=> "c"
irb(main):002:0> "aaca".delete("aa")
=> "c"
=end
