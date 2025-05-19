=begin
Exercise: Element Assignment Challenge (Advanced)

Create a method called `update_collections` that takes three parameters:
•   A string
•   An array of numbers
•   A hash with symbol keys

The method should:
•   Modify the string by capitalizing the first letter and the letter at index 3
•   Increment each number in the array by its index position
•   Add a new key-value pair to the hash: `:modified` with value `true`
•   Return an array containing the modified string, array, and hash

p update_collections(str, arr, hsh)
# Should return ["ProGramming", [10, 21, 32, 43], {:language=>"ruby", :version=>3.1, :modified=>true}]

# Make sure the original objects are modified
p str  # Should output "ProGramming"
p arr  # Should output [10, 21, 32, 43]
p hsh  # Should output {:language=>"ruby", :version=>3.1, :modified=>true}
=end

str = "programming"
arr = [10, 20, 30, 40]
hsh = {language: "ruby", version: 3.1}

def update_collections(str_par, arr_par, hsh_par)
  new_arr = []
  counter = 0

  cap_str_par = str_par.capitalize!
  str_par[3] = 'G'

  inc_numbers = arr_par.map! do |number|
    number += counter
    counter += 1
    number
  end

  hsh_par[:modified] = 'true'

  new_arr.push(cap_str_par, inc_numbers, hsh_par)
end

p update_collections(str, arr, hsh)
# ["ProGramming", [10, 21, 32, 43], {:language=>"ruby", :version=>3.1, :modified=>"true"}]

# Make sure the original objects are modified
p str  # "ProGramming"
p arr  # [10, 21, 32, 43]
p hsh  # {:language=>"ruby", :version=>3.1, :modified=>true}



## Experiments:
arr = [10, 20, 30, 40]

# Increment each number by its index:
# Option 1:
arr[0] = arr[0] + 0
arr[1] = arr[1] + 1
arr[2] = arr[2] + 2
arr[3] = arr[3] + 3
p arr # [10, 21, 32, 43]


# Option 2:
counter = 0
new_arr = []

loop do
  break if counter >= arr.length
  current_number = arr[counter]
  current_number = current_number + counter
  new_arr << current_number
  counter += 1
end

p arr       # [10, 20, 30, 40]
p new_arr   # [10, 21, 32, 43]


# Option 3:
counter = 0

loop do 
  break if counter >= arr.length
  arr[counter] = arr[counter] + counter
  counter += 1
end

p arr         # [10, 21, 32, 43]


# Option 4:
counter = 0
arr.each do |number|
  number = number + counter
  counter += 1
end

p arr    # [10, 20, 30, 40]


# Option 5:
counter = 0
result = arr.map do |number|
          if counter == 0
            number += counter 
            counter += 1
          else
            number += counter
            counter += 1
          end
          number
        end

p result  # [10, 21, 32, 43]
p arr     # [10, 20, 30, 40]


# Option 6:
counter = 0
result = arr.map do |number|
          number += counter
          counter += 1
          number
        end

p result   # [10, 21, 32, 43]
p arr      # [10, 20, 30, 40]


# Option 7:
counter = 0
result = arr.map! do |number|
          number += counter
          counter += 1
          number
        end

p result   # [10, 21, 32, 43]
p arr      # [10, 21, 32, 43]
