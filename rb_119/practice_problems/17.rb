=begin
Create a method that takes an array of integers as an argument. 
The method should determine the minimum integer value that can 
be appended to the array so the sum of all the elements equal 
the closest prime number that is greater than the current sum of 
the numbers. For example, the numbers in [1, 2, 3] sum to 6. The 
nearest prime number greater than 6 is 7. Thus, we can add 1 to 
the array to sum to 7.

Notes:

The array will always contain at least 2 integers.
All values in the array must be positive (> 0).
There may be multiple occurrences of the various numbers in the 
array.

P 
Return number which when added to an array will be closest to the
next prime number of the existed sum of integers

Rules:
- prime number is which can be divisible only by 1 and itself
- difference between prime numbers are not more than 10

D
Input: array
Output: integer
Intermediate:
- hash: ---
- array: ---
- integer: calculate sum
- boolean: check if number is prime
- range: from sum of input array to the nearest prime number

High-level:
Idea1:
- Calculate sum of input array
- Find the next prime number
- Calculate diference between next prime number number and sum of
  input array

Find the next prime number:
Input: integer (sum)
Output: integer (prime number)
Intermediate:
- range: to iterate
- boolean: check each number if prime

Algo:
- Create `numbers`, set to `(sum..sum + 10)`
- Iterate over each number in `numbers`  (`number`)
  - If number is NOT divisible by 2
    - Return number

=end

def is_prime?(number)
  (2..number - 1).each do |divisor|
    return false if (number % divisor).zero?
  end

  true
end

def find_prime(sum)
  (sum + 1..sum + 10).each do |number|
    return number if is_prime?(number)
  end
end

def nearest_prime_sum(arr)
  arr_sum = arr.sum
  prime = find_prime(arr_sum)
  prime - arr_sum
end

p nearest_prime_sum([1, 2, 3]) == 1        # Nearest prime to 6 is 7
p nearest_prime_sum([5, 2]) == 4           # Nearest prime to 7 is 11
p nearest_prime_sum([1, 1, 1]) == 2        # Nearest prime to 3 is 5
p nearest_prime_sum([2, 12, 8, 4, 6]) == 5 # Nearest prime to 32 is 37

# Nearest prime to 163 is 167
p nearest_prime_sum([50, 39, 49, 6, 17, 2]) == 4
