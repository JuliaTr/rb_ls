# Convert the following case statement to an if statement.

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end

=begin
$ ruby stoplight_part2.rb
Go!
$ ruby stoplight_part2.rb
Go!
$ ruby stoplight_part2.rb
Slow down!
=end


## Solution:
stoplight = ['green', 'yellow', 'red'].sample

if stoplight == 'green'
  puts 'Go!'
elsif stoplight == 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end

=begin
$ ruby stoplight_part2.rb
Go!
$ ruby stoplight_part2.rb
Stop!
$ ruby stoplight_part2.rb
Slow down!
=end
