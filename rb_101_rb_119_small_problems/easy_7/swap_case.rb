=begin
Write a method that takes a string as an argument and 
returns a new string in which every uppercase letter is 
replaced by its lowercase version, and every lowercase 
letter by its uppercase version. All other characters 
should be unchanged.

You may not use `String#swapcase`; write your own version 
of this method.
=end

def swapcase(str)
  arr = str.chars

  swapped_chars = arr.map do |char|
    char == char.upcase ? char.downcase : char.upcase
  end

  swapped_chars.join
end

p swapcase('PascalCase') == 'pASCALcASE'  # true
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'  # true



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

p swapcase('PascalCase') == 'pASCALcASE'  # true
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'  # true
