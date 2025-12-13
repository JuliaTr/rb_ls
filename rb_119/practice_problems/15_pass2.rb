# took 15 mins

=begin
Create a method that takes a string argument that consists 
entirely of numeric digits and computes the greatest product of 
four consecutive digits in the string. The argument will always 
have more than 4 digits.

_________________________________________________________

Idea1:
- Convert string into array of digits
- Generate subarrays
'23456'

'23456'
  ^
  '23456'
     ^
[[2, 3, 4, 5], [3, 4, 5, 6]]
- Find the greatest product
=end

def subarrays(arr)
  result = []
  0.upto(arr.size - 1) do |index1|
    (index1 + 3).upto(arr.size - 1) do |index2|
      result << arr[index1..index2] if arr[index1..index2].size == 4
    end
  end
  result
end

def greatest_product(str)
  arr = str.chars.map(&:to_i)
  subarrays = subarrays(arr)

  product = 0
  subarrays.each do |subarray|
    subarray_product = subarray.reduce(:*)

    product = subarray_product if subarray_product > product
  end
  product
end

p greatest_product('23456') == 360      # 3 * 4 * 5 * 6
p greatest_product('3145926') == 540    # 5 * 9 * 2 * 6
p greatest_product('1828172') == 128    # 1 * 8 * 2 * 8
p greatest_product('123987654') == 3024 # 9 * 8 * 7 * 6
# All test cases return `true`
