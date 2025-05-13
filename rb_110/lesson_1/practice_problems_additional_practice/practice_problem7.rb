# Create a hash that expresses the frequency with which each 
# letter occurs in this string:
statement = "The Flintstones Rock"

# Example: { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }


# Solution from assignment:
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

p letters
=begin
["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L",
 "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", 
 "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", 
 "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", 
 "w", "x", "y", "z"]
=end

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end

p result
# {"F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, "h"=>1, "i"=>1, 
# "k"=>1, "l"=>1, "n"=>2, "o"=>2, "s"=>2, "t"=>2}
