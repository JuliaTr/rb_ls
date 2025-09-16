=begin
Write a method that counts the number of occurrences of 
each element in a given array.
=end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck',
            'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurences(arr)
  h = Hash.new(0)

  arr.each do |element|
    h[element] = h[element] + 1
  end

  h.each { |k, v| puts "#{k} => #{v}" }
end

count_occurences(vehicles)
# Output: (as expected)
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2



## Possible solution:
# With `#uniq` (efficiency - less iterations):
vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck',
            'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurences(array)
  occurences = {}

  array.uniq.each do |element|
    occurences[element] = array.count(element)
  end

  occurences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

count_occurences(vehicles)
# Output:
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2



## Further exploration:
# Try to solve the problem when words are case insensitive, e.g. "suv" == "SUV".
vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck',
            'motorcycle', 'motorcycle', 'car', 'truck', 'suv']

def count_occurences(arr)
  h = Hash.new(0)

  arr.each do |element|
    element_downcased = element.downcase
    h[element_downcased] = h[element_downcased] + 1
  end

  h.each { |key, value| puts "#{key} => #{value}" }
end

count_occurences(vehicles)
# Output:
# car => 4
# truck => 3
# suv => 2
# motorcycle => 2



### Experiments:
# Without `#uniq` (more iterations):
vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck',
            'motorcycle', 'motorcycle', 'car', 'truck', 'suv']

def count_occurences(arr)
  occurences = {}

  arr.each do |element|
    occurences[element] = arr.count(element)
  end

  occurences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

count_occurences(vehicles)
# Output:
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
# suv => 1
