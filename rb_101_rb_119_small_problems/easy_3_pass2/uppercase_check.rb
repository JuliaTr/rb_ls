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
p uppercase?('') #== true                # true



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



### Further Exploration:
=begin
*The `uppercase?` should return `true` if the argument is an 
empty string. Would it make sense to return `false` instead? 
Why or why not?*

It doesn't make sense to return `false`, because in Example 1
`''.upcase` returns `""`, which in Ruby is a truthy value. 

In Example 2, `"" == ''` return `true`. It means that it makes 
sense to create a test case to `uppercase?('') == true`, not `false`.
=end

# Example 1:
p ''.upcase           # ""

# Example 2:
def uppercase?(str)
  str.upcase == str
end

p uppercase?('')      # true
