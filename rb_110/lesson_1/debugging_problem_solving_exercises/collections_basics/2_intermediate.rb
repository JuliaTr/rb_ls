# Exercise (intermediate)​: Debug this code that attempts to use 
# element assignment and conversion.
# Exercise 1:
words = "programming is fun"
words_array = words.split
words_array[1] = "can be"
result = words_array.join
puts result   # "programmingcan befun"


## Experiments:
words = "programming is fun"
words_array = words.split
p words_array  # ["programming", "is", "fun"]

p words_array[1]  # "is"
p words_array[1] = "can be"  # "can be"
p words_array[1]  # "can be"
p words_array   # ["programming", "can be", "fun"]


words_array = [1, 2, 3]
words_array[1] = words_array[1] + 1

p words_array[1]  # 3
p words_array     # 1, 3, 3


## Debugged
words = "programming is fun"
words_array = words.split
p words_array  # ["programming", "is", "fun"]

words_array[1] = "can be"
p words_array  # ["programming", "can be", "fun"]

p words_array.join(' ')   # "programming can be fun"




# Exercise 2:
numbers = [1, 2, 3, 4, 5]
numbers[2, 2] = 'three'
p numbers  # [1, 2, "three", 5]


## Degug
numbers = [1, 2, 3, 4, 5]
numbers[2..2] = 'three'
p numbers  # [1, 2, "three", 4, 5]




# Exercise 3:
user_data = { name: "John", age: 30 }
user_data[:email] = "john@example.com"
puts user_data[:phone]  # (empty line)


## Debug
# Option 1:
user_data = { name: "John", age: 30 }
user_data[:email] = "john@example.com"
# user_data.fetch(:phone)    # key not found: :phone (KeyError)
puts user_data[:phone]             # (empty line)

# Using `Hash#fetch` with a default message
puts user_data.fetch(:phone, "Phone number not found")


# Option 2:
user_data = { name: "John", age: 30 }
user_data[:email] = "john@example.com"
user_data[:phone] = "(234) 564 - 9876"
puts user[:phone]      # (234) 564 - 9876
