=begin
Create a method that takes 2 arguments, an array and 
a hash. The array will contain 2 or more elements 
that, when combined with adjoining spaces, will produce 
a person's name. The hash will contain two keys, 
`:title` and `:occupation`, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.
=end

def greetings(arr, h)
  "Hello #{arr[0]} #{arr[1]} #{arr[2]}! "\
  "Nice to have a #{h[:title]} #{h[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."
# Works as expected.



## Possible solution with further exploration:
def greetings(arr, h)
  "Hello #{arr.join(' ')}! "\
  "Nice to have a #{h[:title]} #{h[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."
# Works as expected.
