# 7. Debug the following code to make it work as intended:

def double_numbers(numbers)
  doubled = numbers.map do |number|
    number * 2
  end
  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
double_numbers(my_numbers)
puts my_numbers

# The intention is to double each number in the array and modify 
# the original array.

# Follow-up: What concept is demonstrated in this code snippet?


# answer:
def double_numbers(numbers)
  doubled = numbers.map! do |number|
    number * 2
  end
  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
double_numbers(my_numbers)
puts my_numbers

# Output:
# 2
# 8
# 6
# 14
# 4
# 12

=begin
# Follow-up: What concept is demonstrated in this code snippet?
Concept is mutating vs. non-mutating methods. The `map` is non-mutating
method. The `map!` is a mutating method, which modifies the original object 
in place. 
=end
