snowy = true
hot = false

# One-line `if` statement (`if` statement modifier):
puts "Go for cross country skiing!" if snowy

# One-line `unless` statement (`unless` statement modifier):
puts "It's winter now." unless hot

# Output:
# Go for cross country skiing!
# It's winter now.



# Exercise:
# Ternary conditional expression:
guests_came = true
wait_for_the_guests = false

def greeting
  puts "Hi, friends!"
end

guests_came ? greeting : wait_for_the_guests

# Output: Hi, friends!