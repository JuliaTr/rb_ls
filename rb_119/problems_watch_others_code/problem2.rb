=begin

PROBLEM:
Given an array of substrings made only from the lowercase letters,
return an array of all characters that show up in all strings 
within the given array (including duplicates). For example, if
a character occurs 3 times in all strings, but not 4 times, you 
need to include that character three times in the final answer.

TEST CASES:
p common_chars(["bella", "label", "roller"]) #== ["e", "l", "l"]
p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []

_______________________________________________________________

input - an array of lowercase strings
return - an array of every character that appears in all of the 
         strings
  If a char appears twice in each string, the return array should
  contain two elements of that char

- set chars equal to the characters of the first element (remove first
element from the array)
- iterate through the characters (with select)
  - iterate through the words in the array
  - check if all the words contain a character
    - block should return `true`
    - remove only one of that character from the string
=end

# Step 3:
# Not to mutate the input:
def common_chars(array)
  array = array.map { |word| word.dup }

  chars = array.shift.chars

  chars.select do |char|
    array.all? { |word| word.sub!(char, '') }
  end
end

array = ["bella", "label", "roller"]
p common_chars(array) == ["e", "l", "l"]
p array  # ["bella", "label", "roller"]

p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []
# All test cases return `true`.



# Step 2:
# The input is mutated:
def common_chars(array)
  chars = array.shift.chars

  selected = chars.select do |char|
    array.all? { |word| word.sub!(char, '') }
  end

  p array
  p selected
end

p common_chars(["bella", "label", "roller"]) == ["e", "l", "l"]
p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []
# All test cases return `true`.

=begin
["", "ror"]
["e", "l", "l"]
true

["k", "ok"]
["c", "o"]
true

["godby", "boya", "randm"]
["o"]
true

["ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]
[]
true
=end



# Step 1:
def common_chars(array)
    # `#pop` (mutating method):
  chars = array.pop.chars

  p chars
  p array
end

common_chars(["bella", "label", "roller"])
# ["r", "o", "l", "l", "e", "r"]
# ["bella", "label"]



## Experiments:
def common_chars(array)
  # `map`creates a copy of the object, but doesn't create a 
  # copy of the string. The new array returned by `#map` holds the
  # same String objects as the original.
  array = array.map { |word| word }

  chars = array.shift.chars

  chars.select do |char|
    # Mutating strings with `#sub!` changes them everywhere they're
    # referenced.
    array.all? { |word| word.sub!(char, '')}
  end
end

array = ["bella", "label", "roller"]
p common_chars(array) == ["e", "l", "l"]
p array  # ["bella", "", "ror"]

p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []
# All test cases return `true`.



def common_chars(array)
  chars = array.first.chars

  selected = chars.select do |char|
    array.all? { |word| word.sub!(char, '') }
  end
  p array
  p selected
end

p common_chars(["bella", "label", "roller"]) == ["e", "l", "l"]   
p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []

=begin
["", "", "ror"]
["e", "l", "l"]
true

["", "k", "ok"]
["c", "o"]
true

["", "godby", "boya", "randm"]
["o"]
true

["", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]
[]
true
=end


# Non mutating solutions:
def common_chars(array)
  chars = array.first.chars

  chars.select do |char|
    array.all? { |word| word.sub(char, '') }
  end
end

p common_chars(["bella", "label", "roller"]) #== ["e", "l", "l"]   
p common_chars(["cool", "lock", "cook"]) #== ["c", "o"]
p common_chars(["hello", "goodbye", "booya", "random"]) #== ["o"]
p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) #== []
# All test cases return `false`.

=begin
Output:
["b", "e", "l", "l", "a"]
["c", "o", "o", "l"]
["h", "e", "l", "l", "o"]
["a", "a", "b", "b", "a", "a", "a", "a"]
=end


def common_chars(array)
  chars = array.first.chars

  chars.select do |char|
    array.all? { |word| word.include?(char) }
  end
end

# p common_chars(["bella", "label", "roller"]) == ["e", "l", "l"]  # true
p common_chars(["cool", "lock", "cook"]) #== ["c", "o"]  # false
# ["c", "o", "o"]

# p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]  # true
# p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []  # true


def common_chars(array)
  chars = array.last.chars

  chars.select do |char|
    array.all? { |word| word.include?(char) }
  end
end

p common_chars(["bella", "label", "roller"])
# ["l", "l", "e"]


def common_chars(array)
  chars = array.last.chars

  p chars
  p array
end

common_chars(["bella", "label", "roller"])
# ["r", "o", "l", "l", "e", "r"]
# ["bella", "label", "roller"]



origin = ["bella", "label", "roller"]

a1 = origin.map { |word| word }     # same string objects
a2 = origin.map { |word| word.dup } # new string objects

p a1.object_id == origin.object_id         # false (different Array objects)
p a1[1].object_id == origin[1].object_id   # true (same string objects)

p a2[2].object_id == origin[1].object_id   # false (different string objects)
