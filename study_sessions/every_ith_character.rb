# took 50 mins; needs review

=begin
Given a string and an integer i, write a method that splits the 
string up into a sentence of strings, where each string in the 
sentence contains a character of the argued string and every ith 
character after it:

contains a character of the argued string and every ith character 
after it

rules:
- don't count spaces
- empty string -> empty string
- no ith character -> nothing happens
- integer 0 -> "i cannot be less than 1"

  v  .   .    .  .   .      
("mary had a little lamb", 3)
"mydila ahatem raltlb ydila hatem altlb dila atem ltlb ila tem tlb la em lb a m b"

Idea1:
Iterate over inout string. Take each letter. Create a word, 
pushing every ith character to it. 

Algo:
- Create a `result` array with string
- create `temp`
- Delete white spaces.
- Iterate over each character ('char') of  string without white spaces 
  with `index1`
  - `temp` << `char`
  - Iterate over indexes from `index1` + arg2 with step of `arg2` ('index2')
    - `temp` << character of `index2`
  - `result` << `temp`
  - `temp` = ''
- Retrun `result`.join (' ')


"abcde" 2  "ace bd ce d e"
 ^
  "abcde"
     ^ ^
=end

def fragment(str, number)
  if str.empty?
    return ''
  elsif number == 0
    return "i cannot be less than 1"
  end
  
  result = []
  temp = ''

  str2 = str.delete(' ')
  str2.each_char.with_index do |char, index1|
    temp << char

    (index1 + number).step(to: str2.size - 1, by: number) do |index2|
      temp << str2[index2]
    end

    result << temp
    temp = ''
  end

  result.join(' ')
end

p fragment("abcde", 1) == "abcde bcde cde de e"
p fragment("a b c d e", 2) == "ace bd ce d e"
p fragment("mary had a little lamb", 3) == "mydila ahatem raltlb ydila hatem altlb dila atem ltlb ila tem tlb la em lb a m b"
p fragment("abcde", 0) == "i cannot be less than 1"
p fragment("abcde", 100) == "a b c d e"
p fragment("", 1) == ""
# All test cases return `true`.
