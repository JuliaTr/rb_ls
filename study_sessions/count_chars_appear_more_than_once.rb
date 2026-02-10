=begin
Write a function that will return the count of distinct case-insensitive alphabetic characters and
numeric digits that occur more than once in the input string. The input string can be assumed to contain
only alphabets (both uppercase and lowercase) and numeric digits.



count of distinct case-insensitive alphabetic characters

Rule: 
- '1' consider a character


High-level:
- Find occurrences
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

## Solution:
# Option 1:
def count_duplicates(str)
  arr = str.downcase.chars
  hash = arr.tally

  count = 0
    hash.each do |_, val|
      count += 1 if val > 1
    end
  count
end

p count_duplicates("abcde") #-> 0 # no characters repeats more than once
p count_duplicates("aabbcde") #-> 2 # 'a' and 'b'
p count_duplicates("aabBcde") #-> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
p count_duplicates("indivisibility") #-> 1 # 'i' occurs six times
p count_duplicates("Indivisibilities") #-> 2 # 'i' occurs seven times and 's' occurs twice
p count_duplicates("aA11") #-> 2 # 'a' and '1'
p count_duplicates("ABBA") #-> 2 # 'A' and 'B' each occur twice
# Works as expected.



# Option 2:
def count_duplicates(str)
  occurrences = str.downcase.chars.tally
  occurrences.count { |_, val| val > 1 }
end

p count_duplicates("abcde") #-> 0 # no characters repeats more than once
p count_duplicates("aabbcde") #-> 2 # 'a' and 'b'
p count_duplicates("aabBcde") #-> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
p count_duplicates("indivisibility") #-> 1 # 'i' occurs six times
p count_duplicates("Indivisibilities") #-> 2 # 'i' occurs seven times and 's' occurs twice
p count_duplicates("aA11") #-> 2 # 'a' and '1'
p count_duplicates("ABBA") #-> 2 # 'A' and 'B' each occur twice
# Works as expected.
