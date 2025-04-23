=begin
Exercise: How would you use `String#upcase` to create an uppercase 
version of the string `"xyz"`?
=end

p 'xyz'.upcase   # "XYZ"


### To practice:
puts "Welcome to #{'xyz'.upcase} Corporation!"
# Welcome to XYZ Corporation!

z = 'xyz'.upcase + 'ZYX'.downcase
p z   # "XYZzyx"
