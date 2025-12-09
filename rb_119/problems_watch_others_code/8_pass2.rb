=begin
PROBLEM
Find the length of the longest substring in the given string
that is the same in reverse.

As an example, if the input was "I like racecars that go fast"
the substring (`racecar`) length would be 7.

If the length of the input string is `0`, return value must be `0`

Example:
`'a'` -> 1
`'aab'` -> 2
`'abcde'` -> 1
`'zzbaabcd'` -> 4
`''` -> 0

___________________________________________________________________

Idea1:
- Generate substrings (array)
'baablkj12345432133d'
       '123454321'

'baablkj12345432133d'
 ^
  'baablkj12345432133d'
   ^   

0 upto str size - 1 (`first`)
  first upto str size - 1 (`second`)

str[first..second]
"b"

Algo:
- Create `length` and assign to `0`
- 0 upto str size - 1 (`first`)
  - first upto str size - 1 (`second`)
    - If a substring is the same as reversed AND it's size is GREATER
      than `length`
      - Reassign `length` to substring size
- Return `length` 



Idea2 (will take longer): ---
- Generate substrings (array)
- Select substring which when reversed is the same as not reversed (array)
- Sort selected substrings by their size in descending order (array)
- Return size of the first sorted substring (the longest)

=end

def longest_palindrome(str)
  length = 0

  0.upto(str.size - 1) do |first_idx|
    first_idx.upto(str.size - 1) do |second_idx|
      substring = str[first_idx..second_idx]
      if substring == substring.reverse && substring.size > length
        length = substring.size
      end
    end
  end

  length
end

p longest_palindrome('a') == 1
p longest_palindrome('aa') == 2
p longest_palindrome('baa') == 2
p longest_palindrome('aab') == 2
p longest_palindrome('baabcd') == 4
p longest_palindrome('baablkj12345432133d') == 9
# All test cases return `true`.
