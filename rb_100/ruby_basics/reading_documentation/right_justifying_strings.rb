=begin
Exercise: Use the Ruby documentation for the `String` class to determine 
which method can be used to right justify a `String` object.

Answer:
Resource: https://docs.ruby-lang.org/en/3.2/String.html#method-i-rjust

#rjust
=end

p 'welcome'.rjust(20)  # "             welcome"
p 'home  '.rjust(10)   # "    home  "
