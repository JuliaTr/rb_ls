=begin
Print all odd numbers from 1 to 99, inclusive, to the console, 
with each number on a separate line.
=end

odd_numbers = (1..99).select { |num| num.odd? }
odd_numbers.each { |num| puts num }

=begin
1
3
5
7
9
....
85
87
89
91
93
95
97
99
=end



## Possible solution:
value = 1
while value <= 99
  puts value
  value += 2
end

=begin
1
3
5
7
9
....
85
87
89
91
93
95
97
99
=end
