=begin
Write a method that takes a string with one or more space 
separated words and returns a hash that shows the number of 
words of different sizes.

Words consist of any string of characters that do not include 
a space.

____________________________________________________________

p word_sizes('Hey diddle diddle, the cat and the fiddle!') 
{ 3 => 5, 6 => 1, 7 => 2 }

word.length == 3:
`Hey`, `the`, `cat`, `and`, `the`

word.length == 6:
`diddle` 

word.length == 7:
`diddle,` `fiddle!`

=end

def word_sizes(str)
  h = Hash.new(0)
  arr = str.split

  arr.each do |word|
    # p word
    # p h[word.length]
    p h[word.length] = h[word.length] + 1
    # p h
  end

  h
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

# All test cases return `true`.

=begin
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }

Iteration 1:
"Hey"
0        # p h[word.length]  (doesn't exist yet)
1        # p h[word.length] = h[word.length] + 1  (value for created key-value pair)
{3=>1}   # a new key-value pair was created, because it didn't exist

Iteration 2:
"diddle"
0
1
{3=>1, 6=>1}  # `6=>1` new key-value pair is created

Iteration 3:
"diddle,"
0   
1
{3=>1, 6=>1, 7=>1}  # `7=>1` new key-value pair is created

# The values are added to existed key-value pairs.

Iteration 4:
"the"
1
2
{3=>2, 6=>1, 7=>1} 

Iteration 5:
"cat"
2
3
{3=>3, 6=>1, 7=>1}

Iteration 6:
"and"
3
4
{3=>4, 6=>1, 7=>1}

Iteration 7:
"the"
4
5
{3=>5, 6=>1, 7=>1}

Iteration 8:
"fiddle!"
1
2
{3=>5, 6=>1, 7=>2}

{3=>5, 6=>1, 7=>2}

Ruby checks on every iteration if `h[word.length]` exist.
=end


## Possible solution:
def word_sizes(words_string)
  counts = Hash.new(0)

  words_string.split.each do |word|
    counts[word.size] += 1
  end

  counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

# All test cases return `true`.



## Further exploration:
# Hash::new
h = Hash.new
p h.default   # nil

h = Hash.new(false)
p h.default  # false

h = Hash.new(0)
p h.default    # 0
