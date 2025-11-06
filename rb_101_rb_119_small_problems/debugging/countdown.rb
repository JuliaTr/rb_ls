=begin
Our countdown to launch isn't behaving as expected. Why? Change 
the code so that our program successfully counts down from 10 to 1.
=end

def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  decrease(counter)  # issue is here
end

puts 'LAUNCH!'

=begin
Output:
10
10
10
10
10
10
10
10
10
10
LAUNCH!
=end


## Bug fix:
def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'

=begin
10
9
8
7
6
5
4
3
2
1
LAUNCH!
=end
