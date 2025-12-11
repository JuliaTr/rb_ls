# review

=begin
We're receiving a set of messages in code. The messages are 
sets of text strings, like:
"alakwnwenvocxzZjsf"

Write a method to decode these strings into numbers. The 
decoded number should be the number of lowercase characters 
between the first two uppercase characters. If there aren't 
two uppercase characters, the number should be 0.

Count how many characters between the first upcased letters

Decoded:
'ZoL'  1 0
'foUrsCoreAnd'     2  rs 
'lucYintheskyWith'    inthesky
'dIaMonDs'         1   a

Idea1: ---
- Iterate over each string in array
- Iterate over each char in string
- Check if character upcased start to count until the next upcased 
- Return count for each string

'foUrsCoreAnd'
   ^
  'foUrsCoreAnd'
        ^

str[index].upcase

str[index1].upcase..str[index2].upcase



Idea2:
- Iterate over each string in array (`#map`)
  - upcased = 0
  - downcased = 0
  - Iterate over each char in string
    - If character is upcased
      - Increment `upcased`
    - If `upcased` EQUAL to 1 AND character is downcased
      - Increment `downcased`
  - Return `downcased`
    
=end

def decode(arr)
  arr.map do |str|
    upcased = 0
    downcased = 0

    str.each_char do |char|
      if char == char.upcase
        upcased += 1
      elsif upcased == 1 && char == char.downcase
        downcased += 1
      elsif upcased == 2
        break
      end
    end

    upcased == 1 ? 0 : downcased
  end
end

p decode(['ZoL', 'heLlo', 'XX']) == [1, 0, 0]
p decode(['foUrsCoreAnd', 'seven', '']) == [2, 0, 0]
p decode(['lucYintheskyWith', 'dIaMonDs']) == [8, 1]
p decode([]) == []
