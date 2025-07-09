# Modify the code below so "Hello!" is printed 5 times.
say_hello = true

while say_hello
  puts 'Hello!'
  say_hello = false
end

# Output: Hello!


## Solution
say_hello = 1

while say_hello <= 5
  puts 'Hello!'
  say_hello += 1
end

# Output: 
# Hello!
# Hello!
# Hello!
# Hello!
# Hello!
