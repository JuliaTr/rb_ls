=begin
Exercise (​basic)​: Given the following nested array, write Ruby code to 
access the value 'strawberry':
=end
fruits = [['apple', 'banana'], ['orange', ['kiwi', 'strawberry']], 'pear']

p fruits[1][1][1]  # "strawberry"
