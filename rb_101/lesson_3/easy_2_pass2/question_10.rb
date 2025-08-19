=begin
If we had a table of Flintstone family members that was forty 
characters in width, how could we easily center that title 
above the table with spaces?
=end

title = "Flintstones Family Members"

p title.size   # 26

p title.center(10)
# "Flintstones Family Members"
=begin
The integer argument `size` is less than the size of the string.
So, the string isn't padded.
=end

p title.center(27)
# "Flintstones Family Members "
=begin
The integer argument `size` is greater than the size of the string.
So, the string isn't padded a bit only from one side.
=end

p title.center(36)
# "     Flintstones Family Members     "

p title.center(40)
# "       Flintstones Family Members       "
