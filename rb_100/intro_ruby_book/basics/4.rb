=begin
Exercise:
Use the dates from the previous example and store them in an 
array. Then make your program output the same thing as exercise 3.
=end
# Solution:
dates = [1975, 2004, 2013, 2001, 1981]

puts dates[0]    # 1975
puts dates[1]    # 2004
puts dates[2]    # 2013
puts dates[3]    # 2001
puts dates[4]    # 1981



### Experiments:
dates = [1975, 2004, 2013, 2001, 1981]

dates.each { |date| puts date }
# Output:
# 1975
# 2004
# 2013
# 2001
# 1981
