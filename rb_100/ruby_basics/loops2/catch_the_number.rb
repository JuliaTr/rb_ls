# # Modify the following code so that the loop stops if number 
# # is equal to or between 0 and 10.
# loop do
#   number = rand(100)
#   puts number
# end


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
