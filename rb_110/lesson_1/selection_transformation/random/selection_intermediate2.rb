=begin
Exercise (intermediate): Write a method that takes an array of 
strings and returns a new array containing only strings with 
a specific length using the `loop` method.

select_by_length (['apple', 'orange', 'pear', 
  'grape', 'banana', 'kiwi'], 5)
  # => ['apple', 'grape']
=end

def select_by_length(arr, str_length)
  new_arr = []
  counter = 0

  loop do
    p current_str = arr[counter]

    if current_str.length == 5
      new_arr << current_str
    end

    counter += 1
    break if counter >= arr.size
  end

  new_arr
end

p select_by_length(['apple', 'orange', 'pear', 
  'grape', 'banana', 'kiwi'], 5) 

# Output:
# "apple"    (to test)
# "orange"   (to test)
# "pear"     (to test)
# "grape"    (to test)
# "banana"   (to test)
# "kiwi"     (to test)

# ["apple", "grape"]
