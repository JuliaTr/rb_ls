=begin
Write a method that takes a string argument, and returns `true` 
if all of the alphabetic characters inside the string are uppercase, 
`false` otherwise. Characters that are not alphabetic should be ignored.

________________________________________________________________

PEDAC

P: method should return `true` if all alphabetic characters are 
upcased.
=end

## Solution:
def uppercase?(str)
  str.upcase == str
end

p uppercase?('t') == false              # true
p uppercase?('T') == true               # true
p uppercase?('Four Score') == false     # true
p uppercase?('FOUR SCORE') == true      # true
p uppercase?('4SCORE!') == true         # true
p uppercase?('') == true                # true



### Experiments:
p 't'.casecmp('t')   # 0


def uppercase?(str)
  str.downcase == str
end

# p uppercase?('t') == false              # false
# p uppercase?('T') == true               # false
p uppercase?('Four Score') == false     # true
# p uppercase?('FOUR SCORE') == true    # false
# p uppercase?('4SCORE!') == true       # false
p uppercase?('') == true                # true



def uppercase?(str)
  str.downcase.casecmp(str) == 0 ? true : false
end

# p uppercase?('t') == false              # false
p uppercase?('T') == true               # true
# p uppercase?('Four Score') == false     # false
p uppercase?('FOUR SCORE') == true      # true
p uppercase?('4SCORE!') == true         # true
p uppercase?('') == true                # true



def uppercase?(str)
  uppercase_alphabet = 'ABCDEFGHIJKLMNOPQRSTUWXYZ'
  uppercase_alphabet.include?(str)
end

p uppercase?('t') == false              # true
p uppercase?('T') == true               # true
p uppercase?('Four Score') == false     # true
# p uppercase?('FOUR SCORE') == true    # false
# p uppercase?('4SCORE!') == true       # false
p uppercase?('') == true                # true
