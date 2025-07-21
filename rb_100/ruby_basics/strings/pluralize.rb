=begin
Given the following code, use `Array#each` to print the 
plural of each word in words.

words = 'car human elephant airplane'

Expected output:
cars
humans
elephants
airplanes
=end

words = 'car human elephant airplane'

words.split.each { |word| puts word + 's' }
p words

# Output:
# cars
# humans
# elephants
# airplanes
# "car human elephant airplane"



## Possible solution:
words = 'car human elephant airplane'

words.split(' ').each { |word| puts word + 's' }

# Output:
# cars
# humans
# elephants
# airplanes
