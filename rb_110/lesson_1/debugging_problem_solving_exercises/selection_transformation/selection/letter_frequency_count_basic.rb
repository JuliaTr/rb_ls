=begin
Exercise (​basic)​: Create a method `letter_count` that takes a 
string as an argument and returns a hash that shows the count 
of each letter in the string. Ignore non-alphabetic characters 
and treat uppercase and lowercase letters as the same.

p letter_count("Hello World!") == {"h"=>1, "e"=>1, "l"=>3, "o"=>2, "w"=>1, "r"=>1, "d"=>1}
p letter_count("Launch School") == {"l"=>1, "a"=>1, "u"=>1, "n"=>1, "c"=>1, "h"=>1, "s"=>1, "o"=>2}
p letter_count("123") == {}

Steps:
- Define a `letter_count` method which takes a string as an argument
  (main method)
  - Find unique letters in the string (helper method)
    - Convert string to array
  - Build a new hash
- Count how many times do each leter (only) appear
  - Return: new array of integers 

=end

def convert_string(str)
  str.chars.map { |element| element.downcase }
end

def unique_values(arr)
  arr.uniq
end

def keep_letters(arr_with_unique_values, alphabet_par)
  arr_with_unique_values.keep_if do |element|
    alphabet_par.include?(element)
  end
end

def count_occurence(arr, arr_with_unique_values, alphabet_par)
  arr_occurences = []
  counter = 0

  loop do
    break if counter == arr_with_unique_values.length

    current_value = arr[counter]
    current_unique_value = arr_with_unique_values[counter]

    if alphabet_par.include?(current_unique_value)
      arr_occurences << arr.count(current_unique_value)
    end

    counter += 1
  end

  arr_occurences
end

def letter_count(arr_with_unique_values, arr_occurences, alphabet_par)
  new_hash = {}
  counter = 0
  
  loop do
    break if counter == arr_with_unique_values.length

    current_unique_value = arr_with_unique_values[counter]
    current_occurence = arr_occurences[counter]

    if alphabet_par.include?(current_unique_value)
      new_hash[current_unique_value] = current_occurence
    end

    counter += 1
  end

  new_hash
end

alphabet = 'abcdefghijklmnopqrstuvwxyz'

str1 = "Hello World!"
new_arr = convert_string(str1)
p new_arr # ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d", "!"]

arr_unique_values = unique_values(new_arr) 
p arr_unique_values # ["h", "e", "l", "o", " ", "w", "r", "d", "!"]

arr_without_whitespace_symbols = keep_letters(arr_unique_values, alphabet)
p arr_without_whitespace_symbols # ["h", "e", "l", "o", "w", "r", "d"]

occurence = count_occurence(new_arr, arr_unique_values, alphabet)
p occurence # [1, 1, 3, 2, 1, 1, 1]

p letter_count(arr_unique_values, occurence, alphabet)
# Expected: {"h"=>1, "e"=>1, "l"=>3, "o"=>2, "w"=>1, "r"=>1, "d"=>1}
# {"h"=>1, "e"=>1, "l"=>3, "o"=>2, "w"=>1, "r"=>1, "d"=>1}


str2 = "Launch School"
new_arr = convert_string(str2)
p new_arr # ["l", "a", "u", "n", "c", "h", " ", "s", "c", "h", "o", "o", "l"]

arr_unique_values = unique_values(new_arr) 
p arr_unique_values # ["l", "a", "u", "n", "c", "h", " ", "s", "o"]

arr_without_whitespace_symbols = keep_letters(arr_unique_values, alphabet)
p arr_without_whitespace_symbols # ["l", "a", "u", "n", "c", "h", "s", "o"]

occurence = count_occurence(new_arr, arr_unique_values, alphabet)
p occurence # [2, 1, 1, 1, 2, 2, 1, 2]

p letter_count(arr_unique_values, occurence, alphabet)
# Expected: {"l"=>2, "a"=>1, "u"=>1, "n"=>1, "c"=>2, "h"=>2, "s"=>1, "o"=>2}
# {"l"=>2, "a"=>1, "u"=>1, "n"=>1, "c"=>2, "h"=>2, "s"=>1, "o"=>2}


str3 = "123"
new_arr = convert_string(str3)
p new_arr # ["1", "2", "3"]

arr_unique_values = unique_values(new_arr) 
p arr_unique_values # ["1", "2", "3"]

arr_without_whitespace_symbols = keep_letters(arr_unique_values, alphabet)
p arr_without_whitespace_symbols # []

occurence = count_occurence(new_arr, arr_unique_values, alphabet)
p occurence # []

p letter_count(arr_unique_values, occurence, alphabet) # {}
# Expected: {}




## Optimal ways
# Option 1:
def letter_count(str)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  hash = {}

  downcased_str = str.downcase # => string downcased elements 
  
  downcased_str.chars.uniq.keep_if do |element| # => array with unique downcased elements without white spaces and symbols
    alphabet.include?(element)
  end.each do |element|    # => array with unique downcased elements without white spaces and symbols
    hash[element] = downcased_str.count(element)
  end

  hash
end

p letter_count("Hello World!") == {"h"=>1, "e"=>1, "l"=>3, "o"=>2, "w"=>1, "r"=>1, "d"=>1}
p letter_count("Launch School") == {"l"=>2, "a"=>1, "u"=>1, "n"=>1, "c"=>2, "h"=>2, "s"=>1, "o"=>2}
p letter_count("123") == {}

# Output:
# true
# true
# true



# Option 2:
def letter_count(str)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  downcased_str = str.downcase

  downcased_str.chars.each_with_object({}) do |char, hash|
    if alphabet.include?(char)
      hash[char] = hash[char].to_i + 1
    end
  end
end

p letter_count("Hello World!") == {"h"=>1, "e"=>1, "l"=>3, "o"=>2, "w"=>1, "r"=>1, "d"=>1}
# p letter_count("Launch School") == {"l"=>2, "a"=>1, "u"=>1, "n"=>1, "c"=>2, "h"=>2, "s"=>1, "o"=>2}
# p letter_count("123") == {}

# Output:
# true
# true
# true
