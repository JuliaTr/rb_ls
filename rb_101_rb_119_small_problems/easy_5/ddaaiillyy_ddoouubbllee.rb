=begin
Write a method that takes a string argument and returns a 
new string that contains the value of the original string 
with all consecutive duplicate characters collapsed into a 
single character. 
You may not use `String#squeeze` or `String#squeeze!`.
=end

def crunch(str)
  arr = str.chars
  counter = 0
  new_arr = []

  loop do
    current_element = arr[counter]
    next_element = arr[counter + 1]

    new_arr << current_element unless current_element == next_element

    counter += 1
    break if counter >= arr.length
  end

  new_arr.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'  # true
p crunch('4444abcabccba') == '4abcabcba'               # true
p crunch('ggggggggggggggg') == 'g'                     # true
p crunch('a') == 'a'                                   # true
p crunch('') == ''                                     # true



## Possible solution:
def crunch(text)
  index = 0
  crunch_text = ''

  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end

  crunch_text
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'  # true
p crunch('4444abcabccba') == '4abcabcba'               # true
p crunch('ggggggggggggggg') == 'g'                     # true
p crunch('a') == 'a'                                   # true
p crunch('') == ''                                     # true



## Further exploration:
# Iteration break down:
def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    p crunch_text

    p "Index is #{index}"
    index += 1
  end

  crunch_text
end

p crunch('4444abcabccba') == '4abcabcba'               # true

=begin
Iteration 1:
while 0 <= 13 - 1 (12)
  crunch_text << 4 unless 4 == 4 (true)  (should be false so that Ruby push character to a new string)
  # crunch_text => ""
  # Index is 0
  1 = 0 + 1
end

Iteration 2:
while 1 <= 12
  crunch_text << 4 unless 4 == 4
  # crunch_text => ""
  # Index is 1
  2 = 1 + 1  
end

Iteration 3:
while 2 <= 12
  crunch_text << 4 unless 4 == 4
  # crunch_text => ""
  # Index is 2
  3 = 2 + 1
end

Iteration 4:
while 3 <= 12
  crunch_text << 4 unless 4 == 'a' (`false`)
  # crunch_text => "4"
  # Index is 3
  4 = 3 + 1
end

Iteration 5:
while 4 <= 12
  crunch_text << 'a' unless 'a' == 'b' (`false`)
  # crunch_text => "4a"
  # Index is 4
  5 = 4 + 1
end

Iteration 6:
while 5 <= 12
  crunch_text << 'b' unless 'b' == 'c' (`false`)
  # crunch_text => "4ab"
  # Index is 5
  6 = 5 + 1
end

Iteration 7:
while 6 <= 12
  crunch_text << 'c' unless 'c' == 'a' (`false`)
  # crunch_text => "4abc"
  # Index is 6
  7 = 6 + 1
end

Iteration 8:
while 7 <= 12
  crunch_text << 'a' unless 'a' == 'b' (`false`)
  # crunch_text => "4abca"
  # Index is 7
  8 = 7 + 1
end

Iteration 9:
while 8 <= 12
  crunch_text << 'b' unless 'b' == 'c' (`false`)
  # crunch_text => "4abcab"
  # Index is 8
  9 = 8 + 1
end

Iteration 10:
while 9 <= 12
  crunch_text << 'c' unless 'c' == 'c' (`true`)
  # crunch_text => "4abcab"
  # Index is 9
  10 = 9 + 1
end

Iteration 11:
while 10 <= 12
  crunch_text << 'c' unless 'c' == 'b' (`false`)
  # crunch_text => "4abcabc"
  # Index is 10
  11 = 10 + 1
end

Iteration 12:
while 11 <= 12
  crunch_text << 'b' unless 'b' == 'a' (`false`)
  # crunch_text => "4abcabcb"
  # Index is 11
  12 = 11 + 1
end

Iteration 13:
while 12 <= 12
  crunch_text << 'a' unless 'a' == nil (`false`)
  # crunch_text => "4abcabcba"
  # Index is 12
  13 = 12 + 1
end

Iteration 13 (doesn't happen):
while 13 <= 12 (`false`)
=end

=begin
""
"Index is 0"

""
"Index is 1"

""
"Index is 2"

"4"
"Index is 3"

"4a"
"Index is 4"

"4ab"
"Index is 5"

"4abc"
"Index is 6"

"4abca"
"Index is 7"

"4abcab"
"Index is 8"

"4abcab"
"Index is 9"

"4abcabc"
"Index is 10"

"4abcabcb"
"Index is 11"

"4abcabcba"
"Index is 12"
=end



# What happens if we stop iterating when `index` is equal to 
# `text.length`?
def crunch(text)
  index = 0
  crunch_text = ''

  # The condition should be true so that iteration starts
  while index == text.length
    p index
    p text[index]
    p text.length

    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end

  crunch_text
end

p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'  # false
# p crunch('4444abcabccba') == '4abcabcba'               # false
# p crunch('ggggggggggggggg') == 'g'                     # false
# p crunch('a') == 'a'                                   # false
# p crunch('') == ''                                     # true

=begin
The return value is `""`. It means that the iteration hasn't
happened.
=end


# With `#each_char`:
def crunch(text)
  index = 0
  crunch_text = ''

  text.each_char do |char|
    crunch_text << char unless char == text[index + 1]
    index += 1
  end

  crunch_text
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'  # true
p crunch('4444abcabccba') == '4abcabcba'               # true
p crunch('ggggggggggggggg') == 'g'                     # true
p crunch('a') == 'a'                                   # ttrue
p crunch('') == ''                                     # true
