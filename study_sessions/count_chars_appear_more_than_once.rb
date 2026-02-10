=begin
Write a function that will return the count of distinct case-insensitive alphabetic characters and
numeric digits that occur more than once in the input string. The input string can be assumed to contain
only alphabets (both uppercase and lowercase) and numeric digits.



count of distinct case-insensitive alphabetic characters

Rule: 
- '1' consider a character


High-level:
- Find occurences
- Return number of keys - value is greater than 1

Algo:
- arr = Convert str downcase to chars (array)
- `#tally` (hash)
- `count` = 0
- Iterate over each pair
  - If val is GREATER than 1
    - Increment `count` by 1
- return `count`

"aabBcde"
"aA11"

=end

def count(str)
  arr = str.downcase.chars
  hash = arr.tally

  count = 0
    hash.each do |_, val|
      count += 1 if val > 1
    end
  count
end

p count("abcde") #-> 0 # no characters repeats more than once
p count("aabbcde") #-> 2 # 'a' and 'b'
p count("aabBcde") #-> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
p count("indivisibility") #-> 1 # 'i' occurs six times
p count("Indivisibilities") #-> 2 # 'i' occurs seven times and 's' occurs twice
p count("aA11") #-> 2 # 'a' and '1'
p count("ABBA") #-> 2 # 'A' and 'B' each occur twice
