=begin
Given an input string, determine if the string is a pangram,
meaning every letter in the alphabet appears in the string at 
least once.
=end

ALPHA = ('a'..'z').to_a

def pangram?(str)
  ALPHA.all? { |letter| str.downcase.include?(letter) }
end

p pangram?('The quick brown fox jumps over the lazy dog!') == true
p pangram?('The slow brown fox jumps over the lazy dog!') == false
# All test cases return `true`.