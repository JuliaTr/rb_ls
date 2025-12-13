=begin
Create a method that takes an array of integers as an argument. 
The method should determine the minimum integer value that can 
be appended to the array so the sum of all the elements equal 
the closest prime number that is greater than the current sum of 
the numbers. For example, the numbers in [1, 2, 3] sum to 6. The 
nearest prime number greater than 6 is 7. Thus, we can add 1 to 
the array to sum to 7.

___________________________________

Idea1:
- Calculate sum
- Find next prime number 
prime: divisible by 1 and self, NOT divisible by 2, 3, 5, 7

- Cslculate difference betweeen prime number and sum
=end

def is_prime?(num)
  (2..num - 1).each do |divisor|
    return false if (num % divisor).zero?
  end

  true
end

def return_prime(int)
  (int + 1..int + 5).each do |num|
    return num if is_prime?(num)
  end
end

def nearest_prime_sum(arr)
  arr_sum = arr.sum
  prime_num = return_prime(arr_sum)
  prime_num - arr_sum
end

p nearest_prime_sum([1, 2, 3]) == 1        # Nearest prime to 6 is 7
p nearest_prime_sum([5, 2]) == 4           # Nearest prime to 7 is 11
p nearest_prime_sum([1, 1, 1]) == 2        # Nearest prime to 3 is 5
p nearest_prime_sum([2, 12, 8, 4, 6]) == 5 # Nearest prime to 32 is 37

# Nearest prime to 163 is 167
p nearest_prime_sum([50, 39, 49, 6, 17, 2]) == 4
