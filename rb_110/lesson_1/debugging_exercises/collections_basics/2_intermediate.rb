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
