=begin
We wrote a `neutralize` method that removes negative words from 
sentences. However, it fails to remove all of them. What exactly 
happens?
=end

def neutralize(sentence)
  words = sentence.split(' ')
  words.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

=begin
Lines 9-11 contain a `do..end` block passed to `#each` method
invoked on object referenced by `words`, which is an array of 
strings. The `#each` method does iteration. Inside the block
the `words.delete(word)` deletes negative words (`negative?(word)`)
(line 10) in the array on which iteration is performed. So mutation
is happening while iteration, which leads to unexpected behaviour.
=end


## Bug fix:
# Option 1:
def neutralize(sentence)
  words = sentence.split(' ')
  new_arr = []

  words.each do |word|
    new_arr << word if !negative?(word)
  end

  new_arr.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring', 
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# These cards are part of a board game.


# Option 2:
# `#select`:
def neutralize(sentence)
  sentence.split
          .select { |word| !negative?(word) }
          .join(' ')
end

def negative?(word)
  [ 'dull', 
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# These cards are part of a board game.


# Option 3:
# `#filter`:
def neutralize(sentence)
  sentence.split
          .filter { |word| !negative?(word) }
          .join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# These cards are part of a board game.


# Option 4:
# `#reject`:
def neutralize(sentence)
  sentence.split
          .reject { |word| negative?(word) }
          .join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# These cards are part of a board game.


# Option 5:
# `#keep_if` (mutates original object in place):
def neutralize(sentence)
  sentence.split
          .keep_if { |word| !negative?(word) }  # destructs original object
          .join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# These cards are part of a board game.
