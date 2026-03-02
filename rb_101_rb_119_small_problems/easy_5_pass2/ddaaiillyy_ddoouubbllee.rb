=begin
ddaaiillyy ddoouubbllee

Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.


Idea1:
- Build new str
- Loop over input
- Check if char is already is last in a new str.
- If not, add
- If yes, next

- new_str = ''
- arr = split str
- Iterate over each substring from arr
  - word = ''
  - Iterate over each char in substring
    - word << char if word [-1] in NOT the same char
  - new_str << word
- new_str

  'ddaaiillyy ddoouubbllee'
=end


## More direct logic
def crunch(str)
  result = ''

  str.each_char do |char|
    result << char unless result[-1] == char
  end

  result
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
# All test cases return `true`.




## Solution
def crunch(str)
  return '' if str.empty?

  result = str.split.map do |substr|
    word = ''
    substr.each_char do |char|
      word << char unless word[-1] == char
    end
    word
  end

  result.join(' ')
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
# All test cases return `true`.




## Possible solution
def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
# All test cases return `true`.
