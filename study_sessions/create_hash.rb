# review

=begin
PROBLEM
Given a word, create a hash which stores the indexes of 
each letter in an array.

________________________________________________

Idea1:
Loop over each character in string. Create an empty hash.
Assign value (index) to each character.

Algo:
- Create empty hash `hash`
- Iterate over each character with index in string (`char`, `index`)
  - if `hash[char]` exist 
    - Push `index` to `hash[char]`
  - else
    - `hash[char]` assign to `[]`
    - Push `index` to `hash[char]`
- Return `hash`

"froggy"
 ^


=end

def map_letters(str)
  hash = {}

  str.each_char.with_index do |char, index|
    char_sym = char.to_sym
    if hash.has_key?(char_sym)
      hash[char_sym] << index
    else
      hash[char_sym] = []
      hash[char_sym] << index
    end
  end

  hash
end

p map_letters("froggy") == { f: [ 0 ], r: [ 1 ], o: [ 2 ], g: [ 3, 4 ], y: [ 5 ] }
p map_letters("dodo") == { d: [ 0, 2 ], o: [ 1, 3 ] }
p map_letters("grapes") == { g: [ 0 ], r: [ 1 ], a: [ 2 ], p: [ 3 ], e: [ 4 ], s: [ 5 ] }
