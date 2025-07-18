=begin
In the code below, `stoplight` is randomly assigned as `'green'`, 
`'yellow'`, or `'red'`.

Write a case statement that prints `"Go!"` if `stoplight` 
equals `'green'`, `"Slow down!"` if stoplight equals `'yellow'`, 
and `"Stop!"` if stoplight equals `'red'`.
=end

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then puts "Go!"
when 'yellow' then puts "Slow down!"
when 'red'    then puts "Stop!"
end

=begin
$ ruby stoplight_part1.rb
Go!
$ ruby stoplight_part1.rb
Stop!
$ ruby stoplight_part1.rb
Stop!
$ ruby stoplight_part1.rb
Slow down!
$ 
=end



## Experiments:
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then puts "Go!"
when 'yellow' then puts "Slow down!"
else               puts "Stop!"
end

=begin
$ ruby stoplight_part1.rb
Go!
$ ruby stoplight_part1.rb
Slow down!
$ ruby stoplight_part1.rb
Slow down!
$ ruby stoplight_part1.rb
Slow down!
$ ruby stoplight_part1.rb
Stop!
=end
