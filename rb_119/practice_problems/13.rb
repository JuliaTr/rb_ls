=begin
Create a method that takes two strings as arguments and returns 
`true` if some portion of the characters in the first string can 
be rearranged to match the characters in the second. Otherwise, 
the method should return `false`.

You may assume that both string arguments only contain lowercase 
alphabetic characters. Neither string will be empty.

P 
Return `true`if characters in first string can be rearranged in 
the second string

Rules:
- string 1 and string 2 may have different lengths

D
Input: 2 strings
Output: boolean

High-level:
- Check if number of the same characters in second string are the 
  same in first string

str 1 'boldface'
str 2 'coal'

'coal'
    ^

Iteration 1 ("c"):
{"b" => 1, "o" => 1, "l" => 1, "d" => 1, "f" => 1, "a" => 1, "c" => 1, "e" => 1}
hash1["c"] == 0  X
{"b" => 1, "o" => 1, "l" => 1, "d" => 1, "f" => 1, "a" => 1, "c" => 0, "e" => 1}

Iteration 2 ("o"):
{"b" => 1, "o" => 1, "l" => 1, "d" => 1, "f" => 1, "a" => 1, "c" => 0, "e" => 1}
hash1["o"] == 0  X
{"b" => 1, "o" => 0, "l" => 1, "d" => 1, "f" => 1, "a" => 1, "c" => 0, "e" => 1}

Iteration 3 ("a"):
{"b" => 1, "o" => 0, "l" => 1, "d" => 1, "f" => 1, "a" => 1, "c" => 0, "e" => 1}
hash1["a"] == 0  X
{"b" => 1, "o" => 0, "l" => 1, "d" => 1, "f" => 1, "a" => 0, "c" => 0, "e" => 1}

Iteration 3 ("l"):
{"b" => 1, "o" => 0, "l" => 1, "d" => 1, "f" => 1, "a" => 0, "c" => 0, "e" => 1}
hash1["l"] == 0  X
{"b" => 1, "o" => 0, "l" => 0, "d" => 1, "f" => 1, "a" => 0, "c" => 0, "e" => 1}


str 1 'phyarunstola'
str 2 'pythonrules'

'pythonrules'
          ^
         ('e' is absent, exit)

'phyarunstola'
=end

def occurrence(str)
  hash = Hash.new(0)
  str.each_char { |char| hash[char] += 1 }
  hash 
end

def unscramble(str1, str2)
  hash1 = occurrence(str1)

  str2.each_char do |str2_char|
    return false if hash1[str2_char] == 0   # check if absent
    hash1[str2_char] -= 1
  end

  true
end

p unscramble('ansucchlohlo', 'launchschool') == true
p unscramble('phyarunstole', 'pythonrules') == true
p unscramble('phyarunstola', 'pythonrules') == false
p unscramble('boldface', 'coal') == true
