# took 11 mins

=begin
PROBLEM
Write function `scramble(str1, str2)` that returns `true` if a
portion of `str1` characters can be rearranged to match `str2`,
otherwise, return `false`.

For example:
- `str1` is `'rkgodlw'` and `str2` is `'world'` should return `true`
- `str1` is `'codewaraaossoqqyt'` and `str2` is `'codewars'`
  should return `true`
- `str1` is `'katas'` and `str2` is `'steak'` should return `false`

Only lower case letters will be used (a-z). No punctuation or
digits will be included.


__________________________

Idea1:
- Create a copy of str1

- Iterate over each char in str2
  - check if char is included in copy of str1
    - If yes, substitute (modifying) the first occurrence of char 
      in copy of str1
    - If no, return `false`
- Return `true`

Idea2:
- Create a copy of str1
- count = 0
- Iterate over each char in str2
  - check if char is included in copy of str1
    - If yes, substitute (modifying) the first occurrence of char in copy of str1
    - Increment count by 1
- count == str2.size
=end

## Solution (idea2):
def scramble(str1, str2)
  str1_dup = str1.dup

  str2.each_char do |char|
    if str1_dup.include?(char)
      str1_dup.sub!(char, '')
    else
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
# All test cases return `true`.



## Solution (idea2):
=begin
- Create a copy of str1
- count = 0
- Iterate over each char in str2
  - check if char is included in copy of str1
    - If yes, substitute (modifying) the first occurrence of char in copy of str1
    - Increment count by 1
- count == str2.size
=end

def scramble(str1, str2)
  str1_dup = str1.dup

  count = 0
  str2.each_char do |char|
    if str1_dup.include?(char)
      str1_dup.sub!(char, '')
      count += 1
    end
  end

  count == str2.size
end

p scramble('javass', 'jjss') == false
p scramble('rkgodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true
# All test cases return `true`.



## Learn from others
def scramble(str1, str2)
  str2.each_char do |char2|
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
# All test cases return `true`.
