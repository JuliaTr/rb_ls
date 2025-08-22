# What will be printed by each of these code groups?

# Code snippet A:
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"      # one is: one
puts "two is: #{two}"      # two is: two
puts "three is: #{three}"  # three is: three



# Code snippet B:
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"      # one is: one
puts "two is: #{two}"      # two is: two
puts "three is: #{three}"  # three is: three

