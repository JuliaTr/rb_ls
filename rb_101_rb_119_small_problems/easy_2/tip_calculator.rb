=begin

PROBLEM
Create a simple tip calculator. The program should prompt 
for a bill amount and a tip rate.
The program must compute the tip and then display both the
tip and the total amount of the bill.

EXAMPLE
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

____________________________________________________________

PEDAC

Problem:
  - Input: An integer object
  - Output: 
    - 2 strings with interpolated the returned integer
      objects for the tip ans the total

  - Rules:
    - Explicit:
      - Should prompt user for the bill amount and tip rate.
      - Should compute the tip.
      - Should display both the tip and the total amount of the bill.
      
    - Implicit:
      - The user INPUT should be shouwn on the same line as the prompt.
      - The return values of the tip amount and the total amount should be in the U.S dollars
      - `$` should be printed before the returned values of
        the tip amount and the total amount.
      - The return values for the tip amount and the total amount should be floats.

    - Assumptions:
      - The input validation is not required.
      - The user INPUT for the bill amount is in the U.S dollars.
      - The bill amount and the tip rate are positive integers.
      - The bill amount and the tip rate are greater than 0.

Examples and Test Cases:
  - All examples conform to the rules.

Data Structure:
  - No

Algorithm:
  - Initialize a `PERCENTAGE` constant
  - Ask the user "What is the bill?"                                                              
  - Assign the INPUT answer to the variable `bill_amount` (return: string)
  - Ask the user "What is the tip percentage?"     
  - Assign the INPUT answer to the variable `tip_rate` (return: string)
  - Convert the return value of `bill_amount` and `tip_rate` into float
    (return float for each)
  - Calculate the tip `tip = bill_amount * (tip_rate / PERCENTAGE)`
    (return: float).
  - Calculate the total amount of the bill `total = tip + bill_amount`
    (return: float).
  - Display a string with the tip.
  - Display a string with the total amount of the bill.                
=end

PERCENTAGE = 100

print "What is the bill? "
bill_amount = gets.to_f

print "What is the tip percentage? "
tip_rate = gets.to_f

tip = bill_amount * (tip_rate / PERCENTAGE)
total = tip + bill_amount

puts
puts "The tip is $#{tip}"
puts "The total is $#{total}"
=begin
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
=end



## Further exploration:
PERCENTAGE = 100

print "What is the bill? "
bill_amount = gets.to_f

print "What is the tip percentage? "
tip_rate = gets.to_f

tip = bill_amount * (tip_rate / PERCENTAGE)
total = tip + bill_amount

puts
puts "The tip is $#{format('%.2f', tip)}"
puts "The total is $#{format('%.2f', total)}"
=begin
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
=end



## Solution from the exercise:
print 'What is the bill? '
bill = gets.chomp
bill = bill.to_f

print 'What is the tip percentage? '
percentage = gets.chomp
percentage = percentage.to_f

tip = (bill * (percentage / 100)).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{tip}"
puts "The total is #{total}"


