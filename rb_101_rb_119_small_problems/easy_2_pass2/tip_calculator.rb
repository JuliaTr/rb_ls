=begin
Create a simple tip calculator. The program should prompt for 
a bill amount and a tip rate. The program must compute the tip 
and then display both the tip and the total amount of the bill.

Example:
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
=end

PERCENTAGE = 100

print 'What is the bill? '
bill = gets.to_f

print 'What is the tip percentage? '
tip_percentage = gets.to_f

tip_in_dollars = (bill * (tip_percentage / PERCENTAGE)).round(2)
total = (bill + tip_in_dollars).round(2)

puts "The tip is $#{tip_in_dollars}"
puts "The total is $#{total}"

=begin
$ ruby tip_calculator.rb
What is the bill? 200
What is the tip percentage? 15
The tip is $30.0
The total is $230.0
=end



## Further exploration:
# Modify your solution so it always prints the results with 2 
# decimal places. Example: `$30.00` and `$230.00`.
PERCENTAGE = 100

print 'What is the bill? '
bill = gets.to_f

print 'What is the tip percentage? '
tip_percentage = gets.to_f

tip_in_dollars = bill * (tip_percentage / PERCENTAGE)
total = bill + tip_in_dollars

puts "The tip is $#{format('%.2f', tip_in_dollars)}"
puts "The total is $#{format('%.2f', total)}"
