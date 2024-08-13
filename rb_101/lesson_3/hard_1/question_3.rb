# What is the output?

## A)
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
# Output: one is: one
puts "two is: #{two}"
# Output: two is: two
puts "three is #{three}"
# Output: three is three


## B)
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
# Output: one is: one
puts "two is: #{two}"
# Output: two is: two
puts "three is: #{three}"
# Output: three is: three


## C)
def mess_with_vars(one, two, three)
  one.gsub!("one", "two")
  two.gsub!("two", "three")
  three.gsub!("three", "one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
# Output: one is: two
puts "two is: #{two}"
# Output: two is: three
puts "three is: #{three}"
# Output: three is: one

