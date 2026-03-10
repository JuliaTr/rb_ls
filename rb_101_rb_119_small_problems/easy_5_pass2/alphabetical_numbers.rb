=begin
Write a method that takes an Array of Integers between 0 and 
19, and returns an Array of those Integers sorted based on 
the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, 
ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, 
seventeen, eighteen, nineteen
=end

## Solution
# Option 1:
NUMBER_WORDS = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three',
                4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven',
                8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven',
                12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen',
                15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen',
                18 => 'eighteen', 19 => 'nineteen' }

def alphabetic_number_sort(arr)
  arr.sort_by { |element| NUMBER_WORDS[element] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
] # true




## Refactored option 2:
WORDS = %w(zero one two three four five six seven 
          eight nine ten eleven twelve thirteen fourteen 
          fifteen sixteen seventeen eighteen nineteen)

def build_hash
  WORDS.each_with_object({}).with_index do |(word, hash), idx|
    hash[idx] = word
  end
end

def alphabetic_number_sort(arr)
  hash = build_hash
  arr.sort_by { |element| hash[element] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
] # true




# Option 2:
# Genrate key-value pairs:
WORDS = %w(zero one two three four five six seven 
          eight nine ten eleven twelve thirteen fourteen 
          fifteen sixteen seventeen eighteen nineteen)

def build_hash(arr)
  arr.each_with_object({}).with_index do |(number, hash), idx|
    hash[number] = WORDS[idx]
  end
end

def alphabetic_number_sort(arr)
  # Generate hash with numbers (keys), words (vlues)
  hash = build_hash(arr)

  # Sort
  arr.sort_by { |element| hash[element] }
end

numbers = (0..19).to_a
p alphabetic_number_sort(numbers) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
] # true




## Possible solution:
NUMBER_WORDS = %w(zero one two three four five six seven 
          eight nine ten eleven twelve thirteen fourteen 
          fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(arr)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
] # true
