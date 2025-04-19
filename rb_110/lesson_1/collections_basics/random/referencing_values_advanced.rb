=begin
Exercise (advanced)​: Given this multi-level nested structure, write code 
to transform it so that all strings containing the letter 'a' are 
uppercased.
=end
data = [
  {name: 'John', hobbies: ['reading', 'swimming']},
  {name: 'Sarah', hobbies: ['hiking', {favorite: 'painting', secondary: 'dancing'}]},
  [
    ['math', 'science'], 
    {subjects: ['art', {primary: 'drama', elective: 'music'}]}
  ]
]

=begin
PROBLEM
  Input: Nested array
  Output: The same nested array with all strings containing letter `A`.
  Rules:
      Explicit requirements:
        - should transform all strings containing the letter `a` to upcassed `A`
        - nested array has nested hashes, and nested arrays
        - strings are values and elements of arrays as values in key-value pairs
        - also, strings are elements of a nested array
        - outer array has:
            2 nested hashes:
              {name: 'John', hobbies: ['reading', 'swimming']},
              {name: 'Sarah', hobbies: ['hiking', {favorite: 'painting', secondary: 'dancing'}]},
            1 nested array:
              [
                ['mAth', 'science'], 
                {subjects: ['Art', {primary: 'drAma', elective: 'music'}]}
              ]
        - outer array has 3 elements

      Implicit requirements:
        - the returned array should be the same object

Example:
data = [
  {name: 'John', hobbies: ['reAding', 'swimming']},
  {name: 'SArAh', hobbies: ['hiking', {favorite: 'pAinting', secondary: 'dAncing'}]},
  [
    ['mAth', 'science'], 
    {subjects: ['Art', {primary: 'drAma', elective: 'music'}]}
  ]
]

Data Structure: Nested array

Algorithm:
  - 1. Iterate over each element of the outer loop
    - (substep 1.1) Access each element of the outer loop
    - (substep 1.2) Find a string
    - (substep 1.3) If a string has a letter `a` -> upcase it (`A`)
  - 2. Return the same array 

=end

# (Note for Step 1.1):
# set `0` to `counter`

# Start a loop:
#   reference each element indexed with `counter`
#   increment `counter`
#   `break` the loop if `counter` greater or equal `data` length

counter = 0

loop do
  p data[counter]
  counter += 1
  break if counter >= data.length
end

# Output:
# {:name=>"John", :hobbies=>["reading", "swimming"]}
# {:name=>"Sarah", :hobbies=>["hiking", {:favorite=>"painting", :secondary=>"dancing"}]}
# [["math", "science"], {:subjects=>["art", {:primary=>"drama", :elective=>"music"}]}]


# (Note for Step 1.2):
# Start loop
  # if `data[counter]` is a string
  #   return the string
  # if not
  #   return data type
  # `break` the loop

counter = 0

loop do
  p data[counter]

  loop do
    if data[counter].class == String
      p data[counter].class
    else
      p data[counter].class
    end
    break
  end

  counter += 1
  break if counter >= data.length
end

# Output:
# {:name=>"John", :hobbies=>["reading", "swimming"]}
# Hash
# {:name=>"Sarah", :hobbies=>["hiking", {:favorite=>"painting", :secondary=>"dancing"}]}
# Hash
# [["math", "science"], {:subjects=>["art", {:primary=>"drama", :elective=>"music"}]}]
# Array
