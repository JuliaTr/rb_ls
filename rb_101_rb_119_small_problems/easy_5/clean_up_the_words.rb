=begin
Given a string that consists of some words (all lowercased) 
and an assortment of non-alphabetic characters, write a method 
that returns that string with all of the non-alphabetic 
characters replaced by spaces. If one or more non-alphabetic 
characters occur in a row, you should only have one space in 
the result (the result should never have consecutive spaces).

____________________________________________________________

PEDAC

High-level:
- delete non-alphabetic characters 
- substitute them with 1 whitespace

- delete white spaces if more than 1 in a row
=end

def clean_str(str)
  new_str = ''

  str.chars.each do |char|
    char = char.sub(char, ' ') if char.match(/[-'+*&?]/)
    new_str << char 
  end

  new_str
end

def cleanup(str)
  ' ' + clean_str(str).split.join(' ') + ' '
end

p cleanup("---what's my +*& line?") == ' what s my line '  # true



## Possible solution:
# Option 1:
ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end

p cleanup("---what's my +*& line?") == ' what s my line '  # true



# Option 2:
def cleanup(text)
  text.gsub(/[^a-z]/, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '  # true
