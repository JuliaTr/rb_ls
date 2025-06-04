=begin
Exercise:
What method could you use to find out if a Hash contains a 
specific value in it? Write a program that verifies that 
the value is within the hash.
=end

hsh = { 'cat' => 'pet ', 
        'hummingbird' => 'wild bird', 
        'elephant' => 'wild mammal'
      }

p hsh.value?("wild bird")   # true
p hsh.value?(3)             # false



## Solution from the exercise:
if hsh.value?("wild bird")
  puts "Got it"
else
  puts "Nope!"
end

# Output: Got it
