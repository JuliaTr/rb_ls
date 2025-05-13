=begin
Exercise (​intermediate)​: Create a hash that expresses the 
frequency with which each digit appears in this number.
=end

number = 42531968724619

# Example: 
# {"1"=>2, "2"=>2, "3"=>1, "4"=>2, "5"=>1, "6"=>2, "7"=>1, 
# "8"=> 1, "9"=>2}

=begin
Notes:

Frequency:
0 -> 0, 
1 -> 2,
2 -> 2, 
3 -> 1,
4 -> 2, 
5 -> 1, 
6 -> 2, 
7 -> 1, 
8 -> 1, 
9 -> 2
=end

string_of_numbers = number.to_s
# p string_of_numbers   # "42531968724619"

array_of_numbers = ('0'..'9').to_a
# p array_of_numbers    
# # ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

h = {}

array_of_numbers.each do |str|
  number_frequency = string_of_numbers.count(str)
  h[str] = number_frequency if number_frequency > 0
end

p h
# {"1"=>2, "2"=>2, "3"=>1, "4"=>2, "5"=>1, "6"=>2, "7"=>1, "8"=>1, "9"=>2}
