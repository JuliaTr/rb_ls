=begin

PROBLEM
Write a program that will ask a user for an input of a word or 
multiple words and give back the number of characters. 
Spaces should not be counted as a character.

EXAMPLES:

# 1
input:
Please write word or multiple words: walk
output:
There are 4 characters in "walk".

# 2
input:
Please write word or multiple words: walk, don't run
output:
There are 13 characters in "walk, don't run".

_______________________________________________________________________

PEDAC

Problem:
  - Input: A String object of a word or multiple words.
  - Output: A String object with interpolated Integer object.

  - Rules:
    - Explicit:
      - A word or multtiple words should be an INPUT.
      - A number of characters in the INPUT should be counted and returned.
      - Spaces should not be counted as a character.
    - Implicit:
      - The prompt should be printed, not outputed.
      - The users answer should be on the same line as the prompt.

    - Assumptions:
      - English downcase letters are used as the INPUT.

Examples and Test Case:
  - All examples conform to the rules.

Data Structure:
  - Array

Algorithm:
  - Prompt the user to write a word or multiple words.
  - Count the characters without whitespaces in the INPUT.
  - Output the string with the number of charactters.
=end

print "Please write word or multiple words: "
words = gets.chomp

words_array = words.chars
if words_array.include?(' ')
  words_array.delete(' ')
  words_length = words_array.length
else
  words_length = words_array.length
end

puts "There are #{words_length} characters in \"#{words}\"."
=begin
Please write word or multiple words: walk
There are 4 characters in "walk".

Please write word or multiple words: run, don't walk
There are 13 characters in "run, don't walk".
=end