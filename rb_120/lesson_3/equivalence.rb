# ## The `==` method
# str1 = "something"
# str2 = "something"
# p str1 == str2      # true



# int1 = 1
# int2 = 1
# p int1 == int2      # true



# sym1 = :something
# sym2 = :something
# p sym1 == sym2        # true



# str1 = "something"
# str2 = "something"

# p str1.class         # String
# p str2.class         # String



# str1 = "something"
# str2 = "something"

# str1 = str1 + " else"
# p str1                  # "something else"

# p str1 == str2          # false



str1 = "something"
str2 = "something"
str1_copy = str1

# compare values
p str1 == str2             # true
p str1 == str1_copy        # true
p str2 == str1_copy        # true

# compare objects
p str1.equal? str2         # false
p str1.equal? str1_copy    # true
p str2.equal? str1_copy    # false

