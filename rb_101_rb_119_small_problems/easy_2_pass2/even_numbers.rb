=begin
Print all even numbers from `1` to `99`, inclusive, to the 
console, with each number on a separate line.
=end

# Option 1:
number = 2
while number <= 99
  puts number
  number += 2
end

=begin
2
4
6
8
10
12
14
16
18
....
88
90
92
94
96
98
=end


# Option 2:
1.upto(99) { |number| puts number if number.even? }

=begin
2
4
6
8
10
12
14
16
18
....
88
90
92
94
96
98
=end


# Option 3:
even_numbers = (1..99).select { |num| num.even? }
even_numbers.each { |num| puts num }

=begin
2
4
6
8
10
12
14
16
18
....
88
90
92
94
96
98
=end



## Possible solution:
value = 1
while value <= 99
  puts value if value.even?
  value += 1
end

=begin
2
4
6
8
10
12
14
16
18
....
88
90
92
94
96
98
=end
