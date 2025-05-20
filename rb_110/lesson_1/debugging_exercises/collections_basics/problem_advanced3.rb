=begin
Write a method `format_data` that:
•   Takes a string of CSV data as input
•   Converts it to a hash with appropriate data structures
•   Returns the hash with specific formatting requirements
=end

def convert_into_array(csv_string) # Refactored
  arr = csv_string.split("\n")
end

def create_sub_array(str)
  sub_array = str.split(',')
end

def create_hash(sub_array)
  hash1 = {}
  hash1[:id] = sub_array[0]
  hash1[:name] = sub_array[1]
  hash1[:scores] = sub_array[2..-1].map(&:to_i)
  hash1
end

def format_data(nested_hash1, nested_hash2, sub_array_with_symbols)
  hash = {}
  hash[:header] = sub_array_with_symbols
  hash[:rows] = [nested_hash1, nested_hash2]
  hash
end

csv1 = "id,name,scores\n1,Alice,88,92,79\n2,Bob,95,86,90"

new_arr = convert_into_array(csv1)
p new_arr
# ["id,name,scores", "1,Alice,88,92,79", "2,Bob,95,86,90"]

sub_array1 = create_sub_array(new_arr[0])
p sub_array1 # ["id", "name", "scores"]

symbols_sub_array1 = sub_array1.map(&:to_sym)
p symbols_sub_array1 # [:id, :name, :scores]

sub_array2 = create_sub_array(new_arr[1])
p sub_array2 # ["1", "Alice", "88", "92", "79"]

sub_array3 = create_sub_array(new_arr[2])
p sub_array3 # ["2", "Bob", "95", "86", "90"]

sub_hash1 = create_hash(sub_array2)
p sub_hash1 # {:id=>"1", :name=>"Alice", :scores=>[88, 92, 79]}

sub_hash2 = create_hash(sub_array3)
p sub_hash2 # {:id=>"2", :name=>"Bob", :scores=>[95, 86, 90]}

p format_data(sub_hash1, sub_hash2, symbols_sub_array1)
# {:header=>[:id, :name, :scores], :rows=>[{:id=>"1", :name=>"Alice", :scores=>[88, 92, 79]}, 
# {:id=>"2", :name=>"Bob", :scores=>[95, 86, 90]}]}
# The return value is as expected.


## Experiments:

# NOT optimal
def convert_into_array(csv_string)
  arr = csv_string.split(',')
  # ["id", "name", "scores\n1", "Alice", "88", "92", "79\n2", "Bob", "95", "86", "90"]
  arr[2] = 'scores'
  arr.insert(3, '1')
  arr[7] = '79'
  arr.insert(8, '2')
  arr
end

csv1 = "id,name,scores\n1,Alice,88,92,79\n2,Bob,95,86,90"
new_arr = convert_into_array(csv1)
p new_arr # ["id", "name", "scores", "1", "Alice", "88", "92", "79", "2", "Bob", "95", "86", "90"]


# `each_with_object` doesn't work: 
arr = ["id", "name", "scores", "1", "Alice", "88", "92", "79", "2", "Bob", "95", "86", "90"]
sub_array1 = arr[3..7]
sub_array2 = arr[8..12]
p sub_array1 # ["1", "Alice", "88", "92", "79"]
p sub_array2 # ["2", "Bob", "95", "86", "90"]

nested_hash1 = sub_array1.each_with_object({}) do |element, hash1|
  hash1[:id] = element
  hash1[:name] = element
  hash1[:scores] = element[2..4]
end

p nested_hash1 # {:id=>"79", :name=>"79", :scores=>""}


# `each_with_object` returns expected value:
arr = ["id", "name", "scores", "1", "Alice", "88", "92", "79", "2", "Bob", "95", "86", "90"]
sub_array1 = []
sub_array2 = []

sub_array1 << arr[3..7]
sub_array2 << arr[8..12]
p sub_array1 # [["1", "Alice", "88", "92", "79"]]
p sub_array2 # [["2", "Bob", "95", "86", "90"]]

nested_hash1 = sub_array1.each_with_object({}) do |element, hash1|
                hash1[:id] = element[0]
                hash1[:name] = element[1]
                hash1[:scores] = element[2..4]
              end

p nested_hash1 # {:id=>"1", :name=>"Alice", :scores=>["88", "92", "79"]}



arr = ["id", "name", "scores", "1", "Alice", "88", "92", "79", "2", "Bob", "95", "86", "90"]
sub_array1 = []

sub_array1 << arr[3, 5]
p sub_array1 # [["1", "Alice", "88", "92", "79"]]



# `each_with_object` doesn't work: 
arr = ["id", "name", "scores", "1", "Alice", "88", "92", "79", "2", "Bob", "95", "86", "90"]
sub_array1 = []

sub_array1 << arr[3, 5]
flatten1 = sub_array1.flatten
p flatten1 # ["1", "Alice", "88", "92", "79"]

result = flatten1.each_with_object({}) do |element, hash|
  hash[:id] = element[0]
  hash[:name] = element[1]
  hash[:scores] = element[2..4]
end

p result # {:id=>"7", :name=>"9", :scores=>""}



# `each_with_object` doesn't work:
arr = ["1", "Alice", "88", "92", "79"]

result = arr.each_with_object({}) do |element, hash|
  hash[:id] = element
end

p result # {:id=>"79"}
