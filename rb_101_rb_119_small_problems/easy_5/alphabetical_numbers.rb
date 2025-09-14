# =begin
# Write a method that takes an Array of Integers between 0 and 
# 19, and returns an Array of those Integers sorted based on the
# English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, 
# ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, 
# seventeen, eighteen, nineteen

# ____________________________________________________________

# PEDAC

# - Select values from the hash which correspond each value 
#   from the array
# =end

NUMBER_WORDS = %w(zero one two three four five six seven 
                  eight nine ten eleven twelve thirteen 
                  fourteen fifteen sixteen seventeen 
                  eighteen nineteen)

def alphabetic_number_sort(arr)
  h = {}

  counter = 0
  arr.each do |number|
    h[NUMBER_WORDS[counter]] = number
    counter += 1
  end
  
  sorted_pairs = h.sort

  sorted_pairs.map do |pair|
    pair[1]
  end
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]  # true

=begin
{"zero"=>0, "one"=>1, "two"=>2, "three"=>3, "four"=>4, 
"five"=>5, "six"=>6, "seven"=>7, "eight"=>8, "nine"=>9, 
"ten"=>10, "eleven"=>11, "twelve"=>12, "thirteen"=>13, 
"fourteen"=>14, "fifteen"=>15, "sixteen"=>16, "seventeen"=>17, 
"eighteen"=>18, "nineteen"=>19}
=end



## Possible solution:
NUMBER_WORDS = %w(zero one two three four five six seven 
                  eight nine ten eleven twelve thirteen 
                  fourteen fifteen sixteen seventeen 
                  eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]  # true



## Further exploration:
# Why do you think we didn't use Array#sort_by! instead of 
# Enumerable#sort_by?

# `#sort_by` (non-mutating):
# The original object wasn't changed.
NUMBER_WORDS = %w(zero one two three four five six seven eight
                  nine ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end

arr = (0..19).to_a
p alphabetic_number_sort(arr) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 
  6, 16, 10, 13, 3, 12, 2, 0
] # true

p arr 
# [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]

p NUMBER_WORDS
# ["zero", "one", "two", "three", "four", "five", "six", "seven", 
# "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", 
# "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]



# `#sort_by!` (mutating):
# The original object was sorted destructively in place.
NUMBER_WORDS = %w(zero one two three four five six seven eight
                  nine ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort!(numbers)
  numbers.sort_by! { |number| NUMBER_WORDS[number] }
end

arr = (0..19).to_a
p alphabetic_number_sort!(arr) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 
  6, 16, 10, 13, 3, 12, 2, 0
] # true

p arr
# [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]

p NUMBER_WORDS
# ["zero", "one", "two", "three", "four", "five", "six", "seven", 
# "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", 
# "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]



### Experiments:
NUMBER_WORDS = %w(zero one two three four five six seven eight
                  nine ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort { |number| NUMBER_WORDS[number] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
# Output:
# `>': comparison of String with 0 failed (ArgumentError)
#         from alphabetical_numbers.rb:149:in `sort'



NUMBER_WORDS = %w(zero one two three four five six seven eight
                  nine ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  NUMBER_WORDS.sort
end

p alphabetic_number_sort((0..19).to_a)
# ["eight", "eighteen", "eleven", "fifteen", "five", "four", 
# "fourteen", "nine", "nineteen", "one", "seven", "seventeen", 
# "six", "sixteen", "ten", "thirteen", "three", "twelve", "two", 
# "zero"]



NUMBER_WORDS = %w(zero one two three four five six seven eight
                  nine ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  arr_to_str = numbers.map(&:to_s)
  p arr

  arr_to_str.sort
end

p alphabetic_number_sort((0..19).to_a)
# Output:
# ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", 
# "12", "13", "14", "15", "16", "17", "18", "19"]
# ["0", "1", "10", "11", "12", "13", "14", "15", "16", "17", 
# "18", "19", "2", "3", "4", "5", "6", "7", "8", "9"]



ALPHABETIC_NUMBERS = {
  'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 
  'four' => 4, 'five' => 5, 'six' => 6, 'seven' => 7,
  'eight' => 8, 'nine' => 9, 'ten' => 10, 'eleven' => 11,
  'twelve' => 12, 'thirteen' => 13, 'fourteen' => 14,
  'fifteen' => 15, 'sixteen' => 16, 'seventeen' => 17, 
  'eighteen' => 18, 'nineteen' => 19
}

def alphabetic_number_sort(arr)
  ALPHABETIC_NUMBERS.sort
end

p alphabetic_number_sort((0..19).to_a)
=begin
[["eight", 8], ["eighteen", 18], ["eleven", 11], 
["fifteen", 15], ["five", 5], ["four", 4], ["fourteen", 14], 
["nine", 9], ["nineteen", 19], ["one", 1], ["seven", 7], 
["seventeen", 17], ["six", 6], ["sixteen", 16], ["ten", 10], 
["thirteen", 13], ["three", 3], ["twelve", 12], ["two", 2], 
["zero", 0]]
=end
