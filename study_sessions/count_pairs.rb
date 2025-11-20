=begin
You are given array of integers, your task will be to count all 
pairs in that array and return their count.

Notes:

Array can be empty or contain only one value; in this case 
return 0.
If there are more pairs of a certain number, count each pair 
only once. E.g.: for [0, 0, 0, 0] the return value is 2 
(2 pairs of 0s).


count each pair

P
Return integer (count) of complete pairs

Rules:
- cannot use the same integer to count pairs
  eg. [1, 2, 5, 6, 5, 2]
      2 -> 2  [2, 2]
      5 -> 2  [5, 5]
      2 complete pairs

  eg. [1, 2, 2, 20, 6, 20, 2, 6, 2]
      2 -> 4    [2, 2], [2, 2] (indexes used: 1, 2, 6, 8)
      20 -> 2  
      6 -> 2
- empty, 1-element -> 0
- **complete** pairs
eg. [0, 0, 0, 0, 0, 0, 0]
    0 -> 7  (idexes: 0, 1, 2, 3, 4, 5) (index 6 isn't used)

D
Input: array
Output: integer
Intermediate:
- hash: to count (key - integers), values (their count in array)
- array: generate pairs
- array: select values from hash
- integer: count
- integer: iterate
- range: iterate
- boolean: ---
- string: ---

High-level:
Idea1:
- Create a hash 
- Extract values (count) form hash
- Each value divide by 2 to have complete pair
- Sum them

Idea2:
- Generate pairs
- Count complete pairs

Idea3:
- Create a count
- Increment it when we see a complete pair



Idea1:
- Generate a hash (#tally)
[1, 2, 5, 6, 5, 2]
{1 => 1, 2 => 2, 5 => 2, 6 => 1}

[1, 2, 2, 20, 6, 20, 2, 6, 2]
{1 => 1, 2 => 4, 20 => 2, 6 => 2}

Note: for the pair we need not less the 2 values

- Extract values (count) form hash
{1=>1, 2=>2, 5=>2, 6=>1}
[1, 2, 2, 1]

{1=>1, 2=>4, 20=>2, 6=>2}
[1, 4, 2, 2]

[0, 0, 0, 0, 0, 0, 0]
{0 => 7}
3

- Each value divide by 2 to have complete pair
{1=>1, 2=>2, 5=>2, 6=>1}
[1, 2, 2, 1]
0, 1, 1, 0

[0, 0, 0, 0, 0, 0, 0]
{0 => 7}
3

- Sum them
{1=>1, 2=>2, 5=>2, 6=>1}
[1, 2, 2, 1]
0, 1, 1, 0
2
=end

def pairs(arr)
  arr.tally
     .values
     .sum { |val| val / 2 }
end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0
# Works as expected.
