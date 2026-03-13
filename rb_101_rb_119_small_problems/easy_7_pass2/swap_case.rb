=begin
Write a method that takes a string as an argument and returns a 
new string in which every uppercase letter is replaced by its 
lowercase version, and every lowercase letter by its uppercase 
version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this 
method.
=end

def swapcase(str)
  new_str = ''

  str.each_char do |char|
    new_str << (char.downcase == char ? char.upcase : char.downcase)
  end

  new_str
end

p swapcase('PascalCase') == 'pASCALcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
# All test cases return `true`.




## Possible solution:
def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end

  characters.join
end

p swapcase('PascalCase') == 'pASCALcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
# All test cases return `true`.
