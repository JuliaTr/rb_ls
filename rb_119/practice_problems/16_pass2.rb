# took 8 mins

=begin
Create a method that returns the count of distinct case-insensitive 
alphabetic characters and numeric digits that occur more than 
once in the input string. You may assume that the input string 
contains only alphanumeric characters.

___________________________________________

Idea1:
- Convert string into array
- Find occurrences (tally)
'xxyypzzr'
{'x'=>2, 'y'=>2...}

- Iterate over hash
- If value > 1
- Count this pair


Idea2: (too long)
- Convert string into array
- Find occurrences (tally)
- Select pairs which value > 1
- Return selected keys
- Return length
=end

def distinct_multiples(str)
  str.chars
     .map(&:downcase)
     .tally
     .count { |_, val| val > 1 }
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
