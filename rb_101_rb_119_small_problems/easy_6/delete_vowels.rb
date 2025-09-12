=begin
Write a method that takes an array of strings, and returns an 
array of the same string values, except with the vowels 
(a, e, i, o, u) removed.
=end

def remove_vowels(arr)
  arr.map do |str| 
    if str.downcase == str
      str.delete 'aeiou'
    else
      str.delete 'AEIOU'
    end
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
# All test cases return 'true'.



## Possible solution:
def remove_vowels(strings)
  strings.map { |string| string.delete('aeiouAEIOU') }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
# All test cases return 'true'.
