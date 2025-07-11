=begin
The following code increments `number_a` and `number_b` by either 
0 or 1. `loop` is used so that the variables can be incremented 
more than once, however, `break` stops the loop after the first 
iteration. Use `next` to modify the code so that the loop iterates 
until either `number_a` or `number_b` equals `5`. Print `"5 was 
reached!"` before breaking out of the loop.
=end
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  break
end

p number_a
p number_b

=begin
$ ruby first_to_five.rb
0
0
$ ruby first_to_five.rb
1
0
$ ruby first_to_five.rb
0
1
=end



## Possible solution:
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5

  puts '5 was reached!'
  break
end

# Output: 5 was reached!



## Solution:
# Logical issue: `5 != 5  => false`
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  next if number_a != 5 || number_b != 5
  puts '5 was reached!'
  break
end

# Output: 5 was reached!



## Further exploration:
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  if number_a == 5 || number_b == 5
    puts '5 was reached'
    break
  else
    puts 'Going to the next loop...'
    puts "Number a is #{number_a}"
    puts "Number b is #{number_b}"
  end
end

=begin
$ ruby first_to_five.rb
Going to the next loop...
Number a is 1
Number b is 0
Going to the next loop...
Number a is 1
Number b is 0
Going to the next loop...
Number a is 2
Number b is 0
Going to the next loop...
Number a is 2
Number b is 1
Going to the next loop...
Number a is 3
Number b is 2
Going to the next loop...
Number a is 4
Number b is 3
5 was reached
=end



## Experiments:
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  break if number_a == 5 || number_b == 5
end

p number_a
p number_b

=begin
$ ruby first_to_five.rb
5
4
$ ruby first_to_five.rb
4
5
=end
