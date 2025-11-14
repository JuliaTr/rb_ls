# took 10 mins

=begin
Create a method that takes an array of integers as an argument 
and returns the number of identical pairs of integers in that 
array. For instance, the number of identical pairs in 
`[1, 2, 3, 2, 1]` is 2: there are two occurrences each of both 
`2` and `1`.

If the array is empty or contains exactly one value, return 0.

If a certain number occurs more than twice, count each complete 
pair once. For instance, for `[1, 1, 1, 1]` and `[2, 2, 2, 2, 2]`, 
the method should return 2. The first array contains two 
complete pairs while the second has an extra `2` that isn't part 
of the other two pairs.


occurrences

P
Return number of identical pairs

Rules:
- empty array -> 0
- 1-element array -> 0
- occurrences

D
Input: array
Output: integer
Intermediate: 
- hash: occurences

High-level:
- Find occurrences (return hash)
- Select pairs which values > 1
- Extract values 
  [2, 3, 2]
- Sum up
  [2, 3, 2] = 7
- Find complete pairs 
  7 / 2 = 3
=end

def pairs(arr)
  arr.tally
     .select { |_, val| val > 1 }  # creates intermediate data structure
     .values
     # Each value is divided by 2 and sums up
     .sum { |val| val / 2 }
end

p pairs([3, 1, 4, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7]) == 3
p pairs([2, 7, 1, 8, 2, 8, 1, 8, 2, 8, 4]) == 4
p pairs([]) == 0
p pairs([23]) == 0
p pairs([997, 997]) == 1
p pairs([32, 32, 32]) == 1
p pairs([7, 7, 7, 7, 7, 7, 7]) == 3



## Experiment:
def pairs(arr)
  arr.tally
     .values
     .sum { |count| count / 2 }
end

p pairs([3, 1, 4, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7]) == 3
p pairs([2, 7, 1, 8, 2, 8, 1, 8, 2, 8, 4]) == 4
p pairs([]) == 0
p pairs([23]) == 0
p pairs([997, 997]) == 1
p pairs([32, 32, 32]) == 1
p pairs([7, 7, 7, 7, 7, 7, 7]) == 3
