=begin
Write a method that takes an array of strings, and returns an 
array of the same string values, except with the vowels 
(a, e, i, o, u) removed.
=end

def remove_vowels(arr)
  arr.map { |word| word.delete('aeiouAEIOU') }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
# All test cases return `true`.



## Experiments:
# Doesn't work
def remove_vowels(arr)
  arr.map do |word|
    # returns new object with deleted chars
    word.delete('aeiouAEIOU')
    word  # unchanged
  end
end
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']



=begin
irb(main):014:0> str = 'a.'
=> "a."
irb(main):015:0> str.delete('a')
=> "."
irb(main):016:0> str
=> "a."
=end
