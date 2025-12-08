# took 16 mins

=begin
PROBLEM:
Write a method to find the longest common prefix string amongst
an array of strings. If there's no common prefix, return an empty
string `""`.

Example 1:
Input: ["flower", "flow", "flight"]
Output: "fl"
Explanation: 
`"fl"` is the longest substring which is the same in each string.

Example 2:
Input: ["dog", "racecar", "car"]
Output: ""
Explanation: There's no common prefix among the input strings.

Note: All given inputs are in lowercase letters a-z.

__________________________________________________________



"interspecies", "interstellar", "interstate"

Idea1:
- Create new string
- Iterate over each char of the first string
- If char with the current index is the same as char in all strings
  - Store a char in a new string 
- If not, break
- Return new string


Ideaa2: ---
- Generate substrings for each string
HELPER
"dog"
["d", "do", "dog"]

Iteration from 0 index.upto array size - 1 
  string[index1..index2]

Output:
["d", "do", "dog"]

- Hash with occurrences of substrings in whole array
- Select pair with the greatest value
- Return key
=end

## Solution
def common_prefix(arr)
  prefix_substr = ''
  arr[0].each_char.with_index do |char, index|
    prefix_substr << char if arr.all? { |word| word[index] == char }
  end
  prefix_substr
end

p common_prefix(["flower", "flow", "flight"]) == "fl"
p common_prefix(["dog", "racecar", "car"]) == ""
p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
p common_prefix(["throne", "dungeon"]) == ""
p common_prefix(["throne", "throne"]) == "throne"
# All test cases return `true`.
