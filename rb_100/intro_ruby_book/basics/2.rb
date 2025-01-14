=begin
Exercise:
Use the modulo operator, division, or a combination of both 
to take a 4 digit number and find the digit in the: 
1) thousands place 
2) hundreds place 
3) tens place
4) ones place
=end

# Solution:

# 1. Thousands place
puts 1983 / 1000             # 1

# 2. Hundreds place
puts 1983 % 1000 / 100       # 9

# 3. Tens place
puts 1983 % 1000 / 10 % 10   # 8

# 4. Ones place
puts 1983 % 100 % 10         # 3
