# review

=begin
Unique String Characters
Given two strings, return the characters that are not common 
in the two strings.


"xyab","xzca"

x, y, a, b, x, z, c, a
y, b  (unique from str1)
z, c  (unique from str2)


'ybzc'

Rules: 
- order matters

High-level:
Idea1:
- Go over str1 check if char isn't there
- Extract those which are not


Helper:
- Iterate over each char in each input str
  - If char NOT in another str
    - Push char to `result`

Algo:
- Create `result`
- Helper for str1
- Helper for str2
- Return `result`


Idea2:
- Find unique chars from 2 strings
- Loop over inique chars to check if char isn't in str1 and str2

=end

## Alternative:
def unique_string_characters(str1, str2)
  str1_chars = str1.chars.uniq
  str2_chars = str2.chars.uniq

  # Characters in str1 but not in str2
  unique_to_str1 = str1_chars - str2_chars  # ["y", "b"]

  # Characters in str2 but not in str1
  unique_to_str2 = str2.chars - str1_chars  # ["z", "c"]

  (unique_to_str1 + unique_to_str2).join
end

puts unique_string_characters("xyab", "xzca") == "ybzc" # true
puts unique_string_characters("a", "z") == "az" # true
puts unique_string_characters("abcd", "de") == "abce" # true
puts unique_string_characters("abc", "abba") == "c" # true
puts unique_string_characters("xyz", "zxy") == "" # 
# All test cases print `true`



## Solution with helper (Idea1):
def mutate_result!(one, another, result)
  one.each_char { |char| result << char unless another.include?(char) }
end

def unique_string_characters(str1, str2)
  result = ''

  mutate_result!(str1, str2, result)
  mutate_result!(str2, str1, result)

  result
end

puts unique_string_characters("xyab", "xzca") == "ybzc" # true
puts unique_string_characters("a", "z") == "az" # true
puts unique_string_characters("abcd", "de") == "abce" # true
puts unique_string_characters("abc", "abba") == "c" # true
puts unique_string_characters("xyz", "zxy") == "" # 
# All test cases print `true`



## Solution for Idea1:
def unique_string_characters(str1, str2)
  result = ''

  str1.each_char { |char| result << char unless str2.include?(char) }
  str2.each_char { |char| result << char unless str1.include?(char) }

  result
end

puts unique_string_characters("xyab", "xzca") == "ybzc" # true
puts unique_string_characters("a", "z") == "az" # true
puts unique_string_characters("abcd", "de") == "abce" # true
puts unique_string_characters("abc", "abba") == "c" # true
puts unique_string_characters("xyz", "zxy") == "" # 
# All test cases print `true`




## Solution for Idea2:
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
