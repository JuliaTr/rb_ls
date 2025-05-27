=begin
Exercise (​intermediate)​: Write a method `most_frequent_char` 
that takes a string as an argument and returns the character 
that appears most frequently. If there are multiple characters 
with the same frequency, return the first one to appear in the 
string.

p most_frequent_char('abcdefgabc') == 'a'
p most_frequent_char('Launch School') == 'c'
p most_frequent_char('aaabbc') == 'a'
p most_frequent_char('') == nil


Algorithm:
- Define a method `most_frequent_char` which takes a string as
  an argument
- Convert string into array to iterate over (Return: array)
- Count frequency of each character (Return: hash)
- Find the highest value (Return: integer)
- Select key-value pair with the highest value (Return: hash)
- Return the first key which has the highest value (Return: string)
=end

def most_frequent_char(str)
  frequency_count = str.chars.each_with_object({}) do |element, hash|
    hash[element] = hash[element].to_i + 1
  end
  # p frequency_count # to test

  max_value = frequency_count.values.max
  # p max_value   # to test

  frequency_count.select { |key, value| value == max_value }.keys.first
end

p most_frequent_char('abcdefgabc') == 'a'     # true
p most_frequent_char('Launch School') == 'c'  # true
p most_frequent_char('aaabbc') == 'a'         # true
p most_frequent_char('') == nil               # true



## Experiments:
p "".downcase   # ""
p "".chars      # []

result = [].each_with_object({}) do |element, hash|
  hash[element] = hash[element].to_i + 1
end
p result # {}

p({}.values)  # []
p({}.values.max)  # nil

p({}.select { |_, value| value == {}.values.max }) # {}
p({}.select { |_, value| value == {}.values.max }.keys) # []
p({}.select { |_, value| value == {}.values.max }.keys.first) # nil
