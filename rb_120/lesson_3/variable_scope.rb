# ## Instance Variable Scope

# class Person
#   def initialize(n)
#     @name = n
#   end
# end

# bob = Person.new('bob')
# joe = Person.new('joe')

# puts bob.inspect   # #<Person:0x0000000109d35ab8 @name="bob">
# puts joe.inspect   # #<Person:0x0000000109d35a18 @name="joe">



# class Person
#   def initialize(n)
#     @name = n   # initialized
#   end

#   def get_name
#     @name       # accessible
#   end
# end

# bob = Person.new('bob')
# p bob.get_name    # "bob"



class Person
  def get_name
    @name       # not accessible; initialized anywhere
  end
end

bob = Person.new
p bob.get_name    # nil
