=begin

PROBLEM
Write a method that returns true if the string passed as an argument 
is a palindrome, false otherwise. 
A palindrome reads the same forward and backward. For this exercise, 
case matters as does punctuation and spaces.

TEST CASES
palindrome?('madam') == true
palindrome('Madam') == false            #(case matters)
palindrome?("madam i'm adam") == false  #(all characters matter)
palindrome?('356653') == true

_____________________________________________________________________

PEDAC

Problem: 
  - Input: A string object.
  - Output: A boolean object.

  - Rules:
    - Explicit: 
      - A method should return `true` if the string passed as an 
        argument is a palindrome, false otherwise. 
      - The method should read the same forward and backward.
      - Case, punctuation and spaces matter.
    - Implicit:
      - Upper case and down case letters, apostroph, integers are 
        characters of strings in the argument.

Examples and Test Cases:
  - All test cases conform to the rules.

Data Structure:
  - The work will be done with strings.

Algorithm:
  - Define a method `palindrome?` which takes an argument 'str'.
  - If the first character of a string is not the same as the last one,
    return `false`.                                               
  - If all characters of a string are the same as counting from the last one:
    - return `true`.
=end

def palindrome?(str)
  counter = 0
  counter_backward = -1

  return false if str[counter] != str[counter_backward]

  center_index = str.size / 2

  if str[counter] == str[counter_backward]

    loop do
      counter += 1
      counter_backward += -1
      if str[counter] != str[counter_backward]
        return false
        break
      elsif (str[center_index] == str[counter]) && 
        (str[center_index] == str[counter_backward])
        return true
        break
      end
    end

  end

end

p palindrome?('madam') == true                  # true 
p palindrome?('Madam') == false                 # true 
p palindrome?("madam i'm adam") == false        # true 
p palindrome?('356653') == true                 # true 



## Experiments
def palindrome?(str)
  center_index = str.size / 2

  if str[0] == str[-1]
    counter = 0
    counter_backward = - 1
    loop do
      counter += 1             # counter = counter + 1
      p str[counter]
      counter_backward += -1   # counter_backward = counter_backward + (-1)
      p str[counter_backward]
      p str[center_index]
      break if str[center_index]
    end
  
    return true
  end
end

p palindrome?('madam') == true             # true
p palindrome?('356653') == true            # true



def palindrome?(str)  
  if str[0] == str[-1]
    counter = 0
    counter_backward = - 1
    loop do
      counter += 1             # counter = counter + 1
      p str[counter]
      counter_backward += -1   # counter_backward = counter_backward + (-1)
      p str[counter_backward]
      break if str[counter] != str[counter_backward]
    end
    return false
  end
end

p palindrome?("madam i'm adam") == false     # true
=begin
Output:
"a"
"a"
"d"
"d"
"a"
"a"
"m"
" "
true
=end


def palindrome?(str)
  false if str[0] != str[-1]
end

p palindrome?('Madam') == false              # true
