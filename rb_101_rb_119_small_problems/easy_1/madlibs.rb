=begin

PROBLEM

Mad libs are a simple game where you create a story template with blanks for words.
You, or another player, then construct a list of words and place them into the story, 
creating an often silly or funny story as a result.
Create a simple mad-lib program that prompts for a noun, a verb, an adjective, 
and an adverb and injects those into a story that you create.

TEST CASES
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

______________________________________________________________________________________

PEDAC

Problem:
  - Input: 4 string objects
  - Output: an outputed string with interpolated 4 string objects

  - Rules:
    - Explicit: 
      - The story should be templated with blanks for words.
      - The list of words should be constructted and placed into the story.
      - The prompts should be for a noun, a verb, an adjective, and an adverb.
    - Implicit:
      - Should the the string objects should be interpolated or concatenated?
        (Suppose, it can be interpolated)
Examples and Test Cases:
  - All examples conform to the rules.

Data Structure:
  - No

Algorithm:
  - Create a prompt to ask a user for a noun as an answer.
  - Repeate the procedure above for a verb, an adjective, and an adverb.
  - Interpolate the answers into a string to be outputted.
=end

print ">> Enter a noun: "
noun = gets.chomp

print ">> Enter a verb: "
verb = gets.chomp

print ">> Enter an adjective: "
adjective = gets.chomp

print ">> Enter an adverb: "
adverb = gets.chomp
puts
puts ">> Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"

# Ouput:
# >> Enter a noun: dog
# >> Enter a verb: walk
# >> Enter an adjective: blue
# >> Enter an adverb: quickly

# >> Do you walk your blue dog quickly? That's hilarious!



## Solution form the course
# To use several sentences and then invocate a `sample` method
# on an list of these sentences stored in an array.

sentence_1 = ">> Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} under the fence."
sentence_3 = "The #{noun} #{adverb} #{verb}s #{adjective} hare."

puts [sentence_1, sentence_2, sentence_3].sample

# Ouput:
# >> Enter a noun: cat
# >> Enter a verb: sleep
# >> Enter an adjective: pink
# >> Enter an adverb: calmly

# The cat calmly sleeps pink hare.



## Interpolation with `Kernel#format`

print ">> Enter a noun: "
noun = gets.chomp

print ">> Enter a verb: "
verb = gets.chomp

print ">> Enter an adjective: "
adjective = gets.chomp

print ">> Enter an adverb: "
adverb = gets.chomp
puts
puts ">> Do you #{format('%s', verb)} your #{format('%s', adjective)}
     #{format('%s', noun)} #{format('%s', adverb)}? That's hilarious!"

