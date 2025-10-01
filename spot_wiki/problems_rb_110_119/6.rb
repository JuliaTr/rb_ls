=begin
Non-even substrings:
Given a string of integers, return the number of odd-numbered 
substrings that can be formed. For example, in the case of 
"1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 
numbers.

____________________________________________________________

PEDAC

P 
Return a number of substrings, which integers are odd.

Rules/reqs:
- contiguous substrings with odd integers
["1", "13", "1341", 
"31", "341", 
"41",
"1"]

Note:
Sorted contiguous substrings (odd integers): "1", "1", "13", "31", "41", "341", "1341"
Total: 7

D:
Input: string with integera
Output: integer
Intermediate:
- integer - count total of contiguous substrings with odd integers
- array of contiguous substrings with odd integers
- integer - from string to integer (converted char)
- range - to find substrings

High-level:
- Create a new empty array to store contiguous substrings with odd integers
- Iterate over each index of a range
  - Iterate over next index
    - Push all contiguous substrings to new array
- Iterate over an array of substrings
  - Each pair convert to integer
  - If integer is odd, select it
- Count number of selected integers
=end

## Refactored solution:
def return_odd_substrings(str)
  arr_substrings = []

  # Find all contiguous substrings and push them to new array
  str.each_char.with_index do |_, index_first|
    (index_first..str.length - 1).each do |index_last|
      substring = str[index_first..index_last]
      arr_substrings << substring if substring[-1].to_i.odd?
    end
  end

  arr_substrings
end

def solve(str)
  # Find odd substrings 
  odd_substrings = return_odd_substrings(str)

  # Count number of selected integers:
  odd_substrings.length
end

p solve("1341") == 7          # true
p solve("1357") == 10         # true
p solve("13471") == 12        # true
p solve("134721") == 13       # true
p solve("1347231") == 20      # true
p solve("13472315") == 28     # true



## Solution:
# Inner iteration is on input string directly.
# Option 2:
def return_all_contiguous_substrings(str)
  arr_substrings = []

  # Find all contiguous substrings and push them to new array
  str.each_char.with_index do |_, index_first|
    (index_first..str.length - 1).each do |index_last|
      arr_substrings << str[index_first..index_last]
    end
  end

  arr_substrings
end

def select_odd_substrings(arr)
  arr.select { |substring| substring[-1].to_i.odd? }
end

def solve(str)
  # Find all contiguous substrings and push them to new array
  arr_substrings = return_all_contiguous_substrings(str)

  # If integer is odd, select substring:
  selected_odd_subsrings = select_odd_substrings(arr_substrings)

  # Count number of selected integers:
  selected_odd_subsrings.length
end

p solve("1341") == 7          # true
p solve("1357") == 10         # true
p solve("13471") == 12        # true
p solve("134721") == 13       # true
p solve("1347231") == 20      # true
p solve("13472315") == 28     # true



# Option 1:
# Outer iteration is on range:
def return_all_contiguous_substrings(str)
  arr_substrings = []

  # Find all contiguous substrings and push them to new array
  (0..str.length - 1).each do |index_first|
    (index_first..str.length - 1).each do |index_last|
      arr_substrings << str[index_first..index_last]
    end
  end

  arr_substrings
end

def select_odd_substrings(arr)
  arr.select { |substring| substring[-1].to_i.odd? }
end

def solve(str)
  # Find all contiguous substrings and push them to new array
  arr_substrings = return_all_contiguous_substrings(str)

  # If integer is odd, select substring:
  selected_odd_subsrings = select_odd_substrings(arr_substrings)

  # Count number of selected integers:
  selected_odd_subsrings.length
end

p solve("1341") == 7          # true
p solve("1357") == 10         # true
p solve("13471") == 12        # true
p solve("134721") == 13       # true
p solve("1347231") == 20      # true
p solve("13472315") == 28     # true
