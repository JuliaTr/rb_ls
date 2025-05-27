=begin
Exercise (basic)​: Write a method count_occurrences that takes 
an array as an argument and returns a hash that contains the 
count of each element in the array.

Steps:
- Define a method `count_occurences` which takes an arra to 
  build a hash (main method)
- Select unique values to use them as keys (helper method)
  Return: array of unique values
- Count how many of each values are there in the original array 
  (helper method)
  - Count and push to a new array of counted values
- Build a hash (main method)


p count_occurences(['car', 'car', 'truck', 'car', 'SUV', 'truck'])
Expected: {"car"=>3, "truck"=>2, "SUV"=>1}

p count_occurences(['ruby', 'python', 'ruby', 'javascript'])
# Expected: {"ruby"=>2, "python"=>1, "javascript"=>1}

p count_occurences([]) == {}
=end

def unique_values(arr)
  unique_values = arr.uniq
end

def count_unique_values(arr)
  counter = 0
  arr_counted_values = []

  loop do
    break if counter == unique_values(arr).length

    current_unique_value = unique_values(arr)[counter]

    counted_value = arr.count(current_unique_value)
    arr_counted_values << counted_value

    counter += 1
  end

  arr_counted_values
end

def count_occurrences(arr)
  counter = 0
  new_hash = {}

  loop do
    break if counter == unique_values(arr).length

    current_value_key = unique_values(arr)[counter]
    current_occurence = count_unique_values(arr)[counter]

    new_hash[current_value_key] = current_occurence

    counter += 1
  end

  new_hash
end

arr1 = ['car', 'car', 'truck', 'car', 'SUV', 'truck']
p unique_values(arr1)        # ["car", "truck", "SUV"]
p count_unique_values(arr1)  # [3, 2, 1]
p count_occurrences(arr1)    # {"car"=>3, "truck"=>2, "SUV"=>1}
# Expected: {"car"=>3, "truck"=>2, "SUV"=>1}

arr2 = ['ruby', 'python', 'ruby', 'javascript']
p unique_values(arr2)        # ["ruby", "python", "javascript"]
p count_unique_values(arr2)  # [2, 1, 1]
p count_occurrences(arr2)     # {"ruby"=>2, "python"=>1, "javascript"=>1}
# Expected: {"ruby"=>2, "python"=>1, "javascript"=>1}

arr3 = []
p unique_values(arr3)        # []
p count_unique_values(arr3)  # []
p count_occurrences(arr3)     # {}
# Expected: {}



# Ways to optimize the code:
# With buit-in methods:
def count_occurences(arr)
  new_hash = {}

  arr.each do |element|
    new_hash[element] = arr.count(element)
  end

  new_hash
end

p count_occurences(['car', 'car', 'truck', 'car', 'SUV', 'truck'])     
# {"car"=>3, "truck"=>2, "SUV"=>1}
# Expected: {"car"=>3, "truck"=>2, "SUV"=>1}

p count_occurences(['ruby', 'python', 'ruby', 'javascript'])     
# {"ruby"=>2, "python"=>1, "javascript"=>1}
# Expected: {"ruby"=>2, "python"=>1, "javascript"=>1}

p count_occurences([])     # {}
# Expected: {}



# Iterates over unique elements
def count_occurences(arr)
  new_hash = {}

  arr.uniq.each do |element|
    new_hash[element] = arr.count(element)
  end

  new_hash
end

p count_occurences(['car', 'car', 'truck', 'car', 'SUV', 'truck'])     
# {"car"=>3, "truck"=>2, "SUV"=>1}
# Expected: {"car"=>3, "truck"=>2, "SUV"=>1}

p count_occurences(['ruby', 'python', 'ruby', 'javascript'])     
# {"ruby"=>2, "python"=>1, "javascript"=>1}
# Expected: {"ruby"=>2, "python"=>1, "javascript"=>1}

p count_occurences([])     # {}
# Expected: {}


# Counting while iterating
def count_occurences(arr)
  new_hash = {}

  arr.each do |element|
    new_hash[element] = new_hash[element].to_i + 1
  end

  new_hash
end

p count_occurences(['car', 'car', 'truck', 'car', 'SUV', 'truck'])     
# {"car"=>3, "truck"=>2, "SUV"=>1}
# Expected: {"car"=>3, "truck"=>2, "SUV"=>1}

p count_occurences(['ruby', 'python', 'ruby', 'javascript'])     
# {"ruby"=>2, "python"=>1, "javascript"=>1}
# Expected: {"ruby"=>2, "python"=>1, "javascript"=>1}

p count_occurences([])     # {}
# Expected: {}


# Experiments:
p "hello".to_i  # => 0
