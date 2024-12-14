logical_1 = 77 < 78 && 77 < 77
# true && false
# false
# The `<` operator has higher precedence than the `&&` operator. 

logical_2 = true && 100 >= 100
# true && true
# true
# The `>=` operator has higher precedence than `&&`. 

logical_3 = 2**3 == 8 && 3**2  == 9
# 8 == 8 && 9 == 9
# true && true
# true
# The `**` operator has higher precedence than the `==` operator. `==` 
# has higher precedence than `&&`.

# Expressions are evaluated regarding the order of precedence from highest
# to lowest in Ruby.

puts logical_1  # false
puts logical_2  # true
puts logical_3  # true