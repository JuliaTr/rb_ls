=begin
Given 2 strings, find out if there is a substring that appears
in both strings. You will return `true` if you find a substring
that appears in both strings, or false if you do not. We only
care about substrings that are longer than one letter long.


find out if there is a substring that appears
in both strings

P
Select substring which appears in both strings. Return boolean.

Rules:
- empty string -> false
- if one of input strings is empty -> false
- case doesn't matter
- substring 1 letter -> false
- substrings should be consecutive
- substrings appear at least once in both strings
- at least 1 substring we need
- string 2 shorter than string 1

'Something', 'Home'
om

'BANANA', 'banana'

'1234567', '541265'
12

'supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou'
ou


D
Input: 2 strings
Output: boolean
Intermediate:
- string: substring
- array: store substrings
- boolean: ---
- integer: iteration
- range: iteration

High-level:
Idea1: 
- Generate consecutive substrings longer than 1 char
- Check is substring in string 2 appears in string 1

Idea2:
- Generate consecutive substrings longer than 1 char
- Hash to count how many the same substrings do we have in total
- Take the most frequent

Idea3:
- Generate consecutive substrings longer than 1 char
- Count substring if it appears in both strings.
- As soon as we find it, return `true`. Otherwise, `false`



Idea1:
- If string 1 or string 2 is empty, return `false`
- Generate consecutive substrings longer than 1 char
- Check if substring in string 2 appears in string 1

Generate consecutive substrings longer than 1 char:
Algo:
- Create `result`
- Iterate from 0 index upto str size - 1 (`first`)
  - Iterate from `first` + 1 upto str size - 1 (`second`)
    - Add str[first..second] to `result`; downcase
- Return `result`

'Something'
  ^
  'Something'
      ^
["so", "som"...
"om", "ome"... ]

'Home'
 ^
  'Home'
   ^
["ho", "hom"...
"om", "ome"]


Check if substring in string 2 appears in string 1:
- Iterate over each substring (`substring`)
  - If string 1 include `substring`
    - return `true`
- return `false`

=end

# # Option 1:
# def substring_test(str1, str2)
#   return false if str1.empty? || str2.empty?

#   downcase_str1 = str1.downcase
#   downcase_str2 = str2.downcase

#   # `#any?`:
#   substrings(downcase_str1)
# end



## Solution:
def substrings(str)
  result = []
  0.upto(str.size - 1) do |first|
    (first + 1).upto(str.size - 1) do |second|
      result << str[first..second].downcase
    end
  end
  result
end

def substring_test(str1, str2)
  # downcase str1 and str2
  return false if str1.empty? || str2.empty?

  # `#any?` is possible to use instead
  substrings(str2).each do |substring|
    return true if substrings(str1).include?(substring)
  end

  false
end

p substring_test('Something', 'fun') == false
p substring_test('Something', 'Home') == true
p substring_test('Something','') == false #
p substring_test('', 'Something') == false #
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'lllt') == false      
p substring_test('', '') == false #
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true
