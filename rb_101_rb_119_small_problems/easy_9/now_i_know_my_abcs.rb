=begin

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just 
those words that do not use both letters from any given 
block. Each letter in each block can only be used once.

Write a method that returns `true` if the word passed in as an 
argument can be spelled from this set of blocks, `false`
otherwise.

_________________________________________________________

'BUTCH' - H:U (both in one block)

- how many letters are used in the block

- find an index of subarray in which each word from a string appear
=end

BLOCKS = [
  ['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
  ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
  ['V', 'I'], ['L', 'Y'], ['Z', 'M']
]

def block_word?(str)
  array_with_indices = []
  BLOCKS.each_with_index do |subarray, index|
    str.each_char do |char|
      array_with_indices << index if subarray.include?(char.upcase)
    end
  end

  array_with_indices == array_with_indices.uniq
end

p block_word?('BATCH') == true     # true
p block_word?('BUTCH') == false    # true
p block_word?('jest') == true      # true
p block_word?('apples') == false   # true
p block_word?('Baby') == false     # true



## Possible solution:
BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

p block_word?('BATCH') == true     # true
p block_word?('BUTCH') == false    # true
p block_word?('jest') == true      # true
p block_word?('apples') == false   # true
p block_word?('Baby') == false     # true
