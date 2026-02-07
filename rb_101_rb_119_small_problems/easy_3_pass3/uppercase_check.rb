=begin
Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

Rules:
alphabetic characters
not alphabetic should be ignored

High-level:
- Check if char is alpha (bool)
- check if all chars upcased (bool)

Algo:
Option 1:
- Return true if empty
- Convert str to arr
- `#all`

Option 2:
- Loop over each char 
  - if char is alpha AND downcased
    - return false
- Return `true`
=end

# Option 1:
def uppercase?(str)
  return true if str.empty?

  str.chars.all? { |char| char == char.upcase }
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
# All test cases return `true`.



# Option 2:
def uppercase?(str)
  return true if str.empty?

  str.each_char do |char|
    return false if char.match?(/[a-z]/)
  end

  true
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
# All test cases return `true`.



## Possible solution
def uppercase?(str)
  str == str.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
# All test cases return `true`
