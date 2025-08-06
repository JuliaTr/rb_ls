=begin
Write a program that will ask a user for an input of a word or 
multiple words and give back the number of characters. Spaces 
should not be counted as a character.

input:
Please write word or multiple words: walk

output:
There are 4 characters in "walk".

input:
Please write word or multiple words: walk, don't run

output:
There are 13 characters in "walk, don't run".
=end

print 'Please write word or multiple words: '
word = gets.chomp

if word.include?(" ")
  word_to_array = word.chars
  array_without_white_spaces = word_to_array.delete_if { |char| char == " " }
  word_length = array_without_white_spaces.length
else
  word_length = word.length
end

puts "There are #{word_length} characters in \"#{word}\"."

=begin
$ ruby counting_the_number_of_characters.rb
Please write word or multiple words: walk
There are 4 characters in "walk".

$ ruby counting_the_number_of_characters.rb
Please write word or multiple words: walk, don't run        
There are 13 characters in "walk, don't run".
=end


## Possible solution:
print 'Please write word or multiple words: '
word = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."
