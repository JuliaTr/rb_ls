# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!('important', 'urgent')
puts advice
# Output:
# Few things in life are as urgent as house training your pet dinosaur.




## Experiments:

# Using `String#sub!`

advice = "Few things in life are as important as house training your pet dinosaur."

advice.sub!('important', 'urgent')
puts advice
# Output:
# Few things in life are as urgent as house training your pet dinosaur.


advice = "Few things in life are as important as house training your pet dinosaur." \
          "Also, it is important to feed you dinosaur."

advice.sub!('important', 'urgent')
puts advice
# Output:
# Few things in life are as urgent as house training your pet dinosaur. Also, it is important to feed you dinosaur.


# Using `String#gsub!`

advice = "Few things in life are as important as house training your pet dinosaur. " \
          "Also, it is important to feed you dinosaur."

advice.gsub!('important', 'urgent')
puts advice
# Output:
# Few things in life are as urgent as house training your pet dinosaur. Also, it is urgent to feed you dinosaur.


# The `String#sub!` method substitutes the first occurence of the pattern.
# The `String#gsub!` method substitutes all occurences of the pattern in the string.