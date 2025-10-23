=begin
PROBLEM
Write function `scramble(str1, str2)` that returns `true` is a
portion of `str1` characters can be rearranged to match `str2`,
otherwise, return `false`.

For example:
- `str1` is `'rkgodlw'` and `str2` is `'world'` should return `true`
- `str1` is `'codewaraaossoqqyt'` and `str2` is `'codewars'`
  should return `true`
- `str1` is `'katas'` and `str2` is `'steak'` should return `false`

Only lower case letters will be used (a-z). No punctuation or
digits will be included.

p scramble('javass', 'jjss') == false
p scramble('rkgodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true


_____________________________________________________________

PEDAC

- The number of characters in str1 should be equal or greater
  than in str2

- Split string into characters (both strings)
- Iterate str2
  - If str2 character matches character in str1
    - Find the count of the characters in str1
    - If the count of character in str1 is not equal to or 
      greater than the count of characters in str2
        - Return `false`
    (In other words: return `false` is str1 characters don't 
    include the character in str2 or if the count of characters
    in str1 that match the character in str2 is not greater than 
    or equal to the count of that character in str2)
  - Else
    - Return `true`
=end

# Option 2:
def scramble(str1, str2)
  str2.chars.each do |char2|
    return false if str2.count(char2) > str1.count(char2)
  end

  true
end

p scramble('javass', 'jjss') == false
p scramble('rkgodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true
# All test cases print `true`



# Option 1:
def scramble(str1, str2)
  str1_chars = str1.chars
  str2_chars = str2.chars

  str2_chars.each do |char2|
    if !str1_chars.include?(char2) || 
        str1_chars.count(char2) < str2_chars.count(char2)
      return false
    end
  end

  true
end

p scramble('javass', 'jjss') == false
p scramble('rkgodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true
# All test cases print `true`
