=begin
In the code below, `number` is randomly assigned a number 
between 0 and 9. Then, an `if` statement is used to print 
`"5 is a cool number!"` or `"Other numbers are cool too!"` 
based on the value of `number`.

Currently, `"5 is a cool number!"` is being printed every 
time the program is run. Fix the code so that 
`"Other numbers are cool too!"` gets a chance to be executed.
=end

number = rand(10)

if number = 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end

=begin
cool_numbers.rb:14: warning: found `= literal' in conditional, should be ==
5 is a cool number!
=end


## Bug fix:
number = rand(10)
p number

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end

=begin
$ ruby cool_numbers.rb
0
Other numbers are cool too!
$ ruby cool_numbers.rb
5
5 is a cool number!
=end
