=begin
Write a method that takes a string, and returns a new string in 
which every consonant character is doubled. Vowels (a,e,i,o,u), 
digits, punctuation, and whitespace should not be doubled.
=end

## Solution
CONSONANTS = 'bcdfghjklmnpqrstvwxyz'

def double_consonants(str)
  doubled = ''

  str.each_char do |char|
    doubled <<  if CONSONANTS.include?(char.downcase)
                  char * 2
                else
                  char
                end
  end

  doubled
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
# All tesr cases print `true`.
