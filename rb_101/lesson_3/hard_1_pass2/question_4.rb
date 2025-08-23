=begin
Debug the method. The method determine if an input string is 
an IP address representing dot-separated numbers. e.g. 
"10.4.5.11".

`is_an_ip_number?` method determines if a string is a numeric 
string between `0` and `255` as required for IP numbers.
=end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end


## Improved `is_an_ip_number?(str)`:

=begin
PEDAC
P: Each component from an IP address must be a number between 0
and 255.

High-level:
- Verify the string if it's a valid integer representation
- Check if each number fall between the required range.
=end

def is_an_ip_number?(str)
  array_of_integers_without_dots = str.split(".")
  str_without_dots = array_of_integers_without_dots.join
  is_integer_string = (str_without_dots == str_without_dots.to_i.to_s)

  if is_integer_string
    array_of_integers_without_dots.all? do |integer_string| 
      integer_string.to_i.between?(0, 255)
    end
  end
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  # Improved logic:
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end

p dot_separated_ip_address?("10.4.5.11")   # true
p dot_separated_ip_address?("10.4.5.300")  # false
p dot_separated_ip_address?("4.5.5")       # false
p dot_separated_ip_address?("1.2.3.4.5")   # false



## Solution:
# Refactored version of `is_an_ip_number?(str)`:
def is_an_ip_number?(str)
  str.split(".").join == str.split(".").join.to_i.to_s 
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size > 4 || dot_separated_words.size < 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end

p dot_separated_ip_address?("10.4.5.11")   # true
p dot_separated_ip_address?("4.5.5")       # false
p dot_separated_ip_address?("1.2.3.4.5")   # false



## Alternative solution with simplified iteration:
def is_an_ip_number?(str)
  array_of_integers_without_dots = str.split(".")
  str_without_dots = array_of_integers_without_dots.join
  is_integer_string = (str_without_dots == str_without_dots.to_i.to_s)

  if is_integer_string
    array_of_integers_without_dots.all? do |integer_string| 
      integer_string.to_i.between?(0, 255)
    end
  end
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4
  dot_separated_words.all? { |word| is_an_ip_number?(word) }
end

p dot_separated_ip_address?("10.4.5.11")   # true
p dot_separated_ip_address?("10.4.5.300")  # false
p dot_separated_ip_address?("4.5.5")       # false
p dot_separated_ip_address?("1.2.3.4.5")   # false


def is_an_ip_number?(str)
  str.split(".").join == str.split(".").join.to_i.to_s 
end

# Solution from the question:
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end 

p dot_separated_ip_address?("10.4.5.11")   # false
p dot_separated_ip_address?("4.5.5")       # true
p dot_separated_ip_address?("1.2.3.4.5")   # true



## Experiments:

# Step-by-step breakdown:
def is_an_ip_number?(str)
  str_without_dots = str.split(".").join
  number = str_without_dots.to_i
  number_converted_to_str = number.to_s
  str_without_dots == number_converted_to_str
end

# to test a method:
p is_an_ip_number?("10.4.5.11")   # true
p is_an_ip_number?("10.4.5.a")    # false



p "10.4.5.11".include?((0..255))
# no implicit conversion of Range into String (TypeError)

p "10.4.5.a".to_i.to_s == "10.4.5.a"   # false
p "10.4.5.11".to_i.to_s == "10.4.5.11"   # false
