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

_____________________________________________________________

PEDAC

P
Find the longest common prefix string in an array of strings.
Return a prefix string.

Input: array of strings
Output: string

D
Arrays, strings

High-level:
- Iterate through each string of the array.
- Examine the first letter in that string.
- Check if all first characters of each string are the same.

Algorithm:
- Initialize `result` array
- Iterate from 0 to length of the smallest string
  - Using the index, check if characters of each string is 
    the same
  - If it's the same add the character to a results array
  - If not, return the result array
=end

# Step 3:
def common_prefix(array)
  result = []

  max_index = array.min_by { |string| string.size }.size

  (0...max_index).each do |index|
    current_char = array[0][index]
    if array.all? { |str| str[index] == current_char }
      result << current_char
    else
      return result.join
    end
  end

  result.join
end

p common_prefix(["flower", "flow", "fliwht"]) == "fl"  # true

p common_prefix(["flower", "flow", "flight"]) == "fl"
p common_prefix(["dog", "racecar", "car"]) == ""
p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
p common_prefix(["throne", "dungeon"]) == ""
p common_prefix(["throne", "throne"]) == "throne"
# All test cases return `true`.


# Break the solution:
def common_prefix(array)
  result = []

  max_index = array.min_by { |string| string.size }.size

  (0...max_index).each do |index|
    current_char = array[0][index]
    result << current_char if array.all? { |str| str[index] == current_char }
  end

  result.join
end

p common_prefix(["flower", "flow", "fliwht"]) # "flw"
# Works not as expected.



# Step 2:
def common_prefix(array)
  result = []

  max_index = array.min_by { |string| string.size }.size

  # Check if characters of each string of the `index` is the 
  # same
  (0...max_index).each do |index|
    # Take the first string in the array and take its index:
    current_char = array[0][index]
    # Each string character of the index is the same:
    result << current_char if array.all? { |str| str[index] == current_char }
  end

  result.join
end

p common_prefix(["flower", "flow", "flight"]) == "fl"
p common_prefix(["dog", "racecar", "car"]) == ""
p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
p common_prefix(["throne", "dungeon"]) == ""
p common_prefix(["throne", "throne"]) == "throne"
# All test cases return `true`


# Step 1:
def common_prefix(array)
  result = []

  # Find the size of the smallest array:
  array.min_by { |string| string.size }.size

end

p common_prefix(["flower", "flow", "flight"]) # 4
# The smallest array is `"flow"`.
