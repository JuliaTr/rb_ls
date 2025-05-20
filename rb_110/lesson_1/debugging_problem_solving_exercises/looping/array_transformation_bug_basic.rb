=begin
Exercise: Broken Array Transformation (Basic)
What's wrong with this code? Fix it so that it outputs the 
expected result.
=end

def double_numbers(numbers)
  doubled_numbers = []
  numbers.each do |n|
    doubled_numbers << n * 2
  end
end

my_numbers = [1, 4, 3, 7, 2]
doubled = double_numbers(my_numbers)
p doubled  # Expected: [2, 8, 6, 14, 4]
# [1, 4, 3, 7, 2]



## Bug fix:
# Option 1:
def double_numbers(numbers)
  doubled_numbers = []

  numbers.each do |n|
    doubled_numbers << n * 2
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2]
doubled = double_numbers(my_numbers)
p doubled  # [2, 8, 6, 14, 4]
# Works as expected


# Option 2:
def double_numbers(numbers)
  numbers.map do |n|
    n * 2
  end
end

my_numbers = [1, 4, 3, 7, 2]
doubled = double_numbers(my_numbers)

p doubled      # [2, 8, 6, 14, 4]
p my_numbers   # [1, 4, 3, 7, 2]
# Works as expected
