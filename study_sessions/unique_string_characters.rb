# review

=begin
Unique String Characters
Given two strings, return the characters that are not common 
in the two strings.


"xyab","xzca"

"xyab"
"xzca"

'ybzc'

Rules: 
- order matters

High-level:
Idea1:
- Go over str1 check if char isn't there
- Extract those which are not


Helper:
- Iterate over each char in str
  - If char NOT in another str
    - Push char to `str`

Algo:
- Create `str`
- Helper for str1
- Helper for str2
- Return `str`


Idea2:
- Find unique chars from 2 strings
- Loop over inique chars to check if char isn't in str1 and str2

=end



# Solution for Idea2:
def unique_string_characters(str1, str2)
  unique_arr = (str1 + str2).chars.uniq
  result = ''

  unique_arr.each do |char|
    result << char unless str1.include?(char) && str2.include?(char)
  end

  result
end

puts unique_string_characters("xyab", "xzca") == "ybzc" # true
puts unique_string_characters("a", "z") == "az" # true
puts unique_string_characters("abcd", "de") == "abce" # true
puts unique_string_characters("abc", "abba") == "c" # true
puts unique_string_characters("xyz", "zxy") == "" # 
# All test cases print `true`
