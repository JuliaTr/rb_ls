=begin
Exercise (basic)​: Write a method `most_frequent_number` that 
takes an array of integers and returns the number that appears 
most frequently. If multiple numbers appear the same number of 
times, return the first one encountered.

p most_frequent_number([1, 2, 3, 4, 3, 2, 2]) == 2
p most_frequent_number([1, 1, 2, 2, 3, 3]) == 1
p most_frequent_number([5]) == 5
p most_frequent_number([]) == nil

Algorithm:
- Define a method `most_frequent_number` which takes an array 
  as aparameter
- Calculate occurrences of how many times each number appears 
  (Return: hash)
- Find maximum value in the hash (Return: integer)
=end

def most_frequent_number(arr)
  new_h = arr.each_with_object({}) do |element, hash|
    hash[element] = hash[element].to_i + 1
  end
  
  max_number_occurrences = new_h.values.max

  new_h.select { |_, value| value == max_number_occurrences }.keys[0]
end

p most_frequent_number([1, 2, 3, 4, 3, 2, 2]) == 2
p most_frequent_number([1, 1, 2, 2, 3, 3]) == 1
p most_frequent_number([5]) == 5
p most_frequent_number([]) == nil

# Output:
# true
# true
# true
# true

# appropriate data structure



## Suggestions from LSBot:
# Error handling for empty array and variable naming
def most_frequent_number(arr)
  return nil if arr.empty?

  frequency_count = arr.each_with_object({}) do |number, counts|
    counts[number] = counts[number].to_i + 1
  end 

  max_frequency = frequency_count.values.max
  frequency_count.find { |num, freq| freq == max_frequency }.first
end

p most_frequent_number([1, 2, 3, 4, 3, 2, 2]) == 2
p most_frequent_number([1, 1, 2, 2, 3, 3]) == 1
p most_frequent_number([5]) == 5
p most_frequent_number([]) == nil

# Output:
# true
# true
# true
# true
