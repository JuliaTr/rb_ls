=begin
Exercise: Nested Collection Processing (Advanced)
There's an issue with this code that processes a nested array 
structure.
=end

def find_prime_numbers(nested_arrays)
  result = []

  nested_arrays.each do |array|
    array.each do |number|
      if is_prime?(number)
        result << number
      end
    end
  end

  result
end

def is_prime?(num)
  return false if num <= 1
  (2..Math.sqrt(num)).none? { |i| num % i == 0 }
end

number_set = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]]
prime_numbers = find_prime_numbers(number_set)
p prime_numbers # Expected: [2, 3, 5, 7, 11]
# Works as expected.
