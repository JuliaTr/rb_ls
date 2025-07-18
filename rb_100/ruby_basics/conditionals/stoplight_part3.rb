# Reformat the following `case` statement so that it only 
# takes up 5 lines.

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end



## Solution:
stoplight = ['green', 'yellow', 'red'].sample

decision = case stoplight
           when 'green'  then 'Go!'
           when 'yellow' then 'Slow down!'
           else               'Stop!'
           end

puts decision

=begin
$ ruby stoplight_part3.rb
Go!
$ ruby stoplight_part3.rb
Slow down!
$ ruby stoplight_part3.rb
Slow down!
$ ruby stoplight_part3.rb
Stop!
=end
