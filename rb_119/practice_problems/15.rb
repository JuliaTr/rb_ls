# took 30 mins to solve

=begin
Create a method that takes a string argument that consists 
entirely of numeric digits and computes the greatest product of 
four consecutive digits in the string. The argument will always 
have more than 4 digits.

PEDAC
P
Return the greatest product of consecutive integers

Rules:
- consecutive integers (4)

D
Input: string of integers
Output: integer (product)
Intermediate: (helpers)

High-level:
- Find consecutive substrings
- Calculate product of integers 
- Find greatest product

Find consecutive substrings:
Input: string
Output: array of substrings
Intermediate: 
- integer: to iterate
- range: to iterate

Algo:
- Create `result`
- Iterate over 0 upto string size - 1 (`first`)
  - Iterate over `first` index upto string size - 1 (`second`)
    - Add str[first..second]
- Return `result`

'23456'
  ^
  '23456'
    ^

["2", "23", "234", "2345", "23456", 
"3", "34"...]


Calculate product of integers:
Input: array of substrings
Output: array of products
Intermediate:
- array: selected substrings

Algo (Find substrings length of 4):
- Select

Algo (product):
- Convert string into array of chars
- each char convert into integer

Find greatest product:
Input: array of products
Output: integer
#max

=end

def substrings(str)
  result = []

  0.upto(str.size - 1) do |first|
    first.upto(str.size - 1) do |second|
      result << str[first..second]
    end
  end

  result
end

def greatest_product(str)
  substrings = substrings(str)
  selected_substr = substrings.select { |substring| substring.size == 4 }
  arr_chars = selected_substr.map(&:chars)
  arr_numbers = arr_chars.map { |subarray| subarray.map(&:to_i) }
  arr_numbers.map { |subarray| subarray.reduce(:*) }.max
end

p greatest_product('23456') == 360      # 3 * 4 * 5 * 6
p greatest_product('3145926') == 540    # 5 * 9 * 2 * 6
p greatest_product('1828172') == 128    # 1 * 8 * 2 * 8
p greatest_product('123987654') == 3024 # 9 * 8 * 7 * 6
# All test cases return `true`