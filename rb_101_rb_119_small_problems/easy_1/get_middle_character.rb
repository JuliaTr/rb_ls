=begin

PROBLEM
Write a method that takes a non-empty string argument, 
and returns the middle character or characters of the argument.
If the argument has an odd length, you should return exactly 
one character. If the argument has an even length, you should 
return exactly two characters.

TEST CASES
center_of('I love Ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

______________________________________________________________

PEDAC

Problem:
  - Input: a string object
  - Output: return the middle character or characters of the argument

  - Rules:
    - Explicit:
      - The argument should be a non-empty string.
      - The middle character or characters of the argument
        should be returned, not printed or outputted.
      - If the argument has an odd length, you should return
         exactly one character.
      - If the argument has an even length, you should return
        exactly two characters.

    - Implicit:
      - No

Examples and Test Cases:
  - All test cases conform to the rules.

Data Structure:
  - Array

Algorithm:
  - Define a method called `center_of` that takes one argument 'string'.                          # DONE
  - Convert string to array `array` (should return: array).                                       # DONE
  - Count the length of `array` by `array_length = array.length / 2` (should return: integer).    # DONE
  - Return an integer by finding the middle of the array by
    performing the operation `middle_of_string = array_length / 2` (should return: integer).    # DONE
  - If the `array` length has an odd number of characters:                                        # DONE
    - Return value of `middle_of_string`(should return: string):                                  # DONE
      An index will be the same number as `middle_of_string`, because array is 
      an indexed-based collection, which start with 0.
      Use `middle_of_string` as an index to retrieve the value.                                   
  - If `array_length` has an even number of characters:                                           # DONE
    - Return concatinated values of the 2 indexes (should return: string):                        # DONE
      - Use `middle_of_string - 1` as an index to retrieve the last value of the first substring.
      - Use `middle_of_string` as an index to retrieve the first value the last substring.
=end

def center_of(string)
  array = string.chars
  array_length = array.length
  middle_of_string = array_length / 2

  if array_length.odd?    
    array[middle_of_string]
  elsif array_length.even?
    array[middle_of_string - 1] + array[middle_of_string]
  end
end

p center_of('I love Ruby') == 'e'  # odd; 11 characters; `"e"` is the 6th character
p center_of('Launch School') == ' '  # odd; 13 characters; `' '` is the 7th character
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'           # odd  


## Solution from the exercise:
def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]    # this is equivalent to `string[1, 2]`
  end
end

p center_of('I love Ruby') == 'e'  
p center_of('Launch School') == ' '  
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'           

