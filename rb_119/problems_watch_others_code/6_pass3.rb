# took 20 mins to solve

=begin
Given 2 strings, find out if there is a substring that appears
in both strings. You will return `true` if you find a substring
that appears in both strings, or false if you do not. We only
care about substrings that are longer than one letter long.


______________

P
Return boolean `true` or `false` if there's a substring that appear in both
strings

'Something', 'Home'
  ome          ome

'BANANA', 'banana'

'1234567', '541265'
 12           12

'supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou'
                             ociou                   ociou


if there is a substring that appears in both strings

Thoughts: return `true` as soon as I find a substring which appear
in both strings.

Rules:
- a substring should be > 1 letter
- if one substring is empty -> false
- case don't matter
'BANANA', 'banana'

D
Input: 2 strings
Output: boolean


Idea1:
Generate all substrings longer than 1 character
Find the same

- Generate all substrings longer than 1 character (helper)
'Something', 'Home'
["so", "som", "some"...
"om", "ome"...]
Input: string
Output: array of substrings 

- Find the same
Loop over the shortest array of substrings


Idea2:
Generate all substrings longer than 1 character for shorter string
Check if a substring appear in another string.

algo:
Input: string
Output: array of substrings 

- Iterate from index 0 upto str size - 1 (`first`)
  - Iterate from `first` upto str size - 1 (second)
    - if a substring (downcased) appear in another string (downcased)
      - Return `true`
 - Return `false`

'Something', 'Home'
["so", "som", "some"...
"om", "ome"...]

'Home'
 ^
 'Home'
   ^   
["ho", "hom" ..."om", "ome"...]

=end

def substring_test(str1, str2)
  str2.each_char.with_index do |_, first|
    (first + 1..str2.size - 1).each do |second|
      if str1.downcase.include?(str2[first..second].downcase)
        return true
      end
    end
  end

  false
end

p substring_test('Something', 'fun') == false
p substring_test('Something', 'Home') == true
p substring_test('Something','') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'lllt') == false      
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true
# All test cases return `true`.
