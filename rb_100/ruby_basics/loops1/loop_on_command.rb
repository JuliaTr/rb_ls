# Modify the code below so the loop stops iterating when the 
# user inputs `'yes'`.
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
  puts 'Invalid answer. Please type "yes".'
end

=begin
$ ruby loop_on_command.rb
Should I stop looping?
n
Invalid answer. Please type "yes".
Should I stop looping?
yes
=end
