=begin
You, or another player, construct a list of words and 
place them into the story, creating an often silly or funny 
story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, 
an adjective, and an adverb and injects those into a story that 
you create.

Example:
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!
=end
puts 'Enter a noun:'
noun = gets.chomp

puts 'Enter a verb:'
verb = gets.chomp

puts 'Enter an adjective:'
adjective = gets.chomp

puts 'Enter an adverb:'
adverb = gets.chomp

sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} on the roof top of the skyscraper."
sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} cat's fur."

puts [sentence_1, sentence_2, sentence_3].sample
=begin
$ ruby madlibs.rb
Enter a noun:
table
Enter a verb:
sleep
Enter an adjective:
silver
Enter an adverb:
eagerly
The table eagerly sleeps up silver cat's fur.
=end
