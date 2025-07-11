=begin
Modify the code below so that the user's input gets added to 
the numbers array. Stop the loop when the array contains 5 
numbers.
=end
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
end

puts numbers



## Solution:
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i

  numbers << input
  break if numbers.length == 5
end

puts numbers

=begin
$ ruby insert_numbers.rb
Enter any number:
1
Enter any number:
2
Enter any number:
3
Enter any number:
4
Enter any number:
5
1
2
3
4
5
=end



### Possible solution:
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i

  numbers.push(input)
  break if numbers.size == 5
end

puts numbers

=begin
$ ruby insert_numbers.rb
Enter any number:
1
Enter any number:
2
Enter any number:
3
Enter any number:
4
Enter any number:
5
1
2
3
4
5
=end
