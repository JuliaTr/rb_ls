=begin
Exercise:
Write a method that takes a string as an argument. The method 
should return a new, all-caps version of the string, only if 
the string is longer than 10 characters.
=end

# Solution:
def upcase_string(str)
  if str.length > 10
    new_str = str.upcase
  else
    str
  end
end

p upcase_string('hi')
p upcase_string('hi, friends!')

# Output:
# "hi"
# "HI, FRIENDS!"
