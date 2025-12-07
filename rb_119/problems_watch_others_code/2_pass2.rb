=begin
PROBLEM:
Given an array of substrings made only from the lowercase letters,
return an array of all characters that show up in all strings 
within the given array (including duplicates). For example, if
a character occurs 3 times in all strings, but not 4 times, you 
need to include that character three times in the final answer.


# (if char repeats n or more times ia all words separately, return 
where it rerepaets minimum occurrences)

P 
Return a new array with chars appear in each string

Rules:
- character should be in each word
- if no repeated chars -> return empty array

["bella", "label", "roller"]) == ["e", "l", "l"]


D
Input: arrays of strings
Output: new array of chars
Intermediate:
- strings: ---
- arrays: ----
- hashes: count occurrences
- integers: iteration over indexes
- integers: count
- range: iteration over indexes

High-level:
Idea1:
- Iterate over the longest string in array
- check if character from longest word is in another words
- If yes, include in input array
- Sort in alphabetical order

Idea2:
- Iterate over the first word
- check if character from first word is in another words
- If yes, include in input array

if
a character occurs 3 times in all strings, but not 4 times, you 
need to include that character three times in the final answer.
Idea3:
- Create hash with occurrences of characters in all strings
{"h" => 1, "e" => 3 ....}


"hello" "goodbye", "booya", "random"
 ^

{"h" => 1, "e" => 3 ....}


=end

# Alternative to `arr.map(&:map).flatten`:
# def return_array_chars(arr)
#   arr_chars = []
#   arr.each do |word|
#     word.each_char do |char|
#       arr_chars << char
#     end
#   end
#   arr_chars
# end

def occurrences(arr)
  arr_chars = arr.map(&:chars).flatten
  arr_chars.tally
end

def common_chars(arr)
  hash = occurrences(arr)

  result = []
  number = arr.size
  temp = ''
  
  arr[0].each_char do |char| # in the first word
    if arr.all? { |word| word.include?(char) }
      value_hash = hash[char]

      if value_hash == number || (value_hash % number).zero?
        result << char
      elsif temp.include?(char)
        next
      elsif !(value_hash % number).zero? && value_hash > number
        result << char
        temp << char
      end

    end
  end

  result
end


# TEST CASES:
p common_chars(["bella", "label", "roller"]) == ["e", "l", "l"] 
p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []
# All test cases return `true`.



## Experiments:
=begin
Idea2:
- Iterate over the first word
- check if character from first word is in another words
- If yes, include in input array

Algo:
- Create `result`
- Create `number = arr.size` (number of times the word should be in array)
- Iterate over each char of first word (`arr[0]`)
  - count = 0
  - Iterate over each word
    - If `char` is incuded in each word 
      - coutn += 1
  - If count == number
    - Push `char` to `result`
- Return `result`
=end

def common_chars(arr)
  result = []
  number = arr.size

  arr[0].each_char do |char|
    count = 0

    arr.each do |word|
      count += 1 if word.include?(char)
    end

    result << char if count == number
  end

  result
end

# TEST CASES:
p common_chars(["bella", "label", "roller"]) == ["e", "l", "l"] 
# p common_chars(["cool", "lock", "cook"]) == ["c", "o"]   # false
p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []
