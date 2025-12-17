=begin
Write a method that takes an array of strings, and returns an 
array of the same string values, except with the vowels 
(a, e, i, o, u) removed.
=end

## Solution
def remove_vowels(arr)
  arr.map do |words|
    words.chars.reject { |char| 'aeiouAEIOU'.include?(char) }.join
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
# All test cases return `true`.



## Possible solution:
def remove_vowels(arr)
  # p arr
  p arr.map { |str| str.delete('aeiouAEIOU') }
  # p arr
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
=begin
["ABC", "AEIOU", "XYZ"]
["BC", "", "XYZ"]
["ABC", "AEIOU", "XYZ"]
=end
