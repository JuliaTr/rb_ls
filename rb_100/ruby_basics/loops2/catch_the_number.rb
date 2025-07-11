# Modify the following code so that the loop stops if number 
# is equal to or between 0 and 10.
loop do
  number = rand(100)
  puts number
end

## Refactored:
loop do
  number = rand(100)
  puts number
  break if (0..10).include?(number)
end

=begin
$ ruby catch_the_number.rb
83
42
73
82
98
35
66
90
77
59
24
95
63
15
71
83
42
32
80
22
15
4
$ ruby catch_the_number.rb
95
81
50
17
69
42
10
=end



## Solution:
loop do
  number = rand(100)
  puts number
  break if number == 0 || (0..10).include?(number)
end

=begin
$ ruby catch_the_number.rb
71
11
45
60
22
89
3
$ ruby catch_the_number.rb
32
30
74
50
39
4
=end



### Possible solution
loop do
  number = rand(100)
  puts number
  break if number.between?(0, 10)
end

=begin
$ ruby catch_the_number.rb
94
63
59
64
87
39
64
65
96
43
18
59
26
4
=end