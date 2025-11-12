=begin
Create a method that returns the count of distinct case-insensitive 
alphabetic characters and numeric digits that occur more than 
once in the input string. You may assume that the input string 
contains only alphanumeric characters.

P
Return number of chars which appear > 1

Rules:
- appear 1 -> 0
- case doesn't matter

D
Input: string
Output: integer

High-level
- Find occurrences 
- Find keys which has > 1 occurrence
- Count keys

Find occurrences:
Input: str
Output: hash
Intermediate:
- array: convert string to array

=end
def occurrences(str)
  str.chars.each_with_object(Hash.new(0)) do |char, hash|
    hash[char.downcase] += 1
  end
end

def distinct_multiples(str)
  hash = occurrences(str)

  hash.select { |_, value| value > 1 }
      .keys
      .count
end

p distinct_multiples('xyz') == 0               # none
p distinct_multiples('xxyypzzr') == 3          # x, y, z
p distinct_multiples('xXyYpzZr') == 3          # x, y, z
p distinct_multiples('unununium') == 2         # u, n
p distinct_multiples('multiplicity') == 3      # l, t, i
p distinct_multiples('7657') == 1              # 7
p distinct_multiples('3141592653589793') == 4  # 3, 1, 5, 9
p distinct_multiples('2718281828459045') == 5  # 2, 1, 8, 4, 5
# All test cases return `true`