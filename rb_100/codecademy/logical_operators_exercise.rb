### The logical AND (`&&`) operator:

logical_1 = 77 < 78 && 77 < 77
# true && false
# false
# The comparison less than (`<`) operator has higher precedence than `&&`. 

logical_2 = true && 100 >= 100
# true && true
# true
# The comparison greater than or equal to (`>=`) operator has higher 
# precedence than `&&`. 

logical_3 = 2**3 == 8 && 3**2 == 9
# 8 == 8 && 9 == 9
# true && true
# true
# The arithmetic exponentiation (`**`) operator has higher precedence 
# than the equality (`==`) operator. `==` has higher precedence than `&&`.

puts logical_1  # false
puts logical_2  # true
puts logical_3  # true



### The logical OR (`||`) operator:

logical_4 = 2**3 != 3**2 || true
# 8 != 9 || true
# true || true
# true
# `**` has higher precedence than the comparison not equal to (`!=`) 
# operator. `!=` has higher precedence than the logical OR (`||`) operator.

logical_5 = false || -10 > -9
# false || false
# false
# The comparison greater than (`>`) operator has higher precedence than
# `||`.

logical_6 = false || false

puts logical_4  # true
puts logical_5  # false
puts logical_6  # false



### The logical NOT (`!`) operator:

logical_7 = !true
logical_8 = !true && !true
# false && false
# false
# `!` has higher precedence than `&&`.

logical_9 = !(700 / 10 == 70)
# !(70 == 70)
# !true
# false
# Expression inside the parenthesis `()` is evaluated first, regardless 
# that `!` has the highest precedence in Ruby. 
# The arithmetic division (`/`) operator has higher precedence than `==`.

puts logical_7  # false
puts logical_8  # false
puts logical_9  # false



logical_10 = (3 < 4 || false) && (false || true)
# (true || false) && (false || true)
# true && true
# true

logical_11 = !true && (!true || 100 != 5**2)
# false && (false || 100 != 5**2)
# false && (false || 100 != 25)
# false && (false || true)
# false && true
# false

logical_12 = true || !(true || false)
# true || !true
# true || false
# true

puts logical_10  # true
puts logical_11  # false
puts logical_12  # true

# Expressions are evaluated regarding the hierarchy of precedence from highest
# to lowest in Ruby.
