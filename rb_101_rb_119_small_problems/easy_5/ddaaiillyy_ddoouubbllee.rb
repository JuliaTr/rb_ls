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
