=begin
Which of the following are objects in Ruby? If they are objects, 
how can you find out what class they belong to?

1. `true`
2. `"hello"`
3. `[1, 2, 3, "happy days"]`
4. `142`
=end

# They are all objects in Ruby. All values are objects in Ruby.
p true.class                      # TrueClass
p "hello".class                   # String
p [1, 2, 3, "happy days"].class   # Array
p 142.class                       # Integer
