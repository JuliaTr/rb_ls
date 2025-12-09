=begin
Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt". 

The input will only consist of lowercase characters and will be at least one letter long. 
If there are multiple solutions, return the one that appears first. 

______________________________________

longest alphabetical substring

"asdfaaaabbbbcttavvfffffdf"
    "aaaabbbbctt"

'asdfbyfgiklag'
   'fgikl'

Rules:
- ASCII value should go up; if it goes down, then it's another substring

High-level:
- substrings sliced by ASCII value
Input: string
Output: array of substrings
'as|df|by|fgikl|ag'

- empty array `result`
- `temp` string
- Iterate over each char with index in string 
  - if next char isn't nil AND ASCII value for the next char is LESS or EQUAL than current char
    - push current char to `temp`
  - if not
    - push current char to `temp`
    - push `temp` to `result`
    - `temp` to ''
- `result`

'as|df|by|fgikl|ag'
                 ^
""
"as", "df", ...."ag"

- sort by substring length in descending order
Input: array of substrings
Output: sorted array

- return first one

=end

def substrings(str)
  result = []
  temp = ''
  str.each_char.with_index do |char, index|
    if !str[index + 1].nil? && char.ord <= str[index + 1].ord
      temp << char
    else
      temp << char
      result << temp
      temp = ''
    end
  end
  result
end

def longest(str)
  substrings = substrings(str)
  substrings.sort_by { |substring| -substring.size }[0]
end

p longest('asd') == 'as' 
p longest('nab') == 'ab' 
p longest('abcdeapbcdef') == 'abcde' 
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt' 
p longest('asdfbyfgiklag') =='fgikl' 
p longest('z') == 'z' 
p longest('zyba') == 'z'
