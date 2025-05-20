=begin
Exercise: Collection Conversion (Intermediate)
Create a method `transform_data` that takes a string containing comma-separated words. The method should:
•   Convert the string to an array of words (splitting by commas)
•   Transform the array into a hash where each word is a key and its length is the value
•   Return the hash with keys sorted alphabetically
=end

def transform_data(str)
  arr = str.split(',')
  h = {}

  arr.each do |word|
    h[word] = word.length
  end

  h
end

p transform_data("apple,banana,cherry") == {"apple"=>5, "banana"=>6, "cherry"=>6}
# true
p transform_data("red,green,blue,yellow") == {"blue"=>4, "green"=>5, "red"=>3, "yellow"=>6}
# true
p transform_data("") == {} # true
