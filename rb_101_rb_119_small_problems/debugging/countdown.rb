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

=begin
**Why?**
This is because `counter` should be reassigned to the return value 
of `decrease(counter)` method call (line 14) inside the block,
so that for the next iteration `counter` (line 13) will reference
a new decreased value.
=end


## Bug fix:
def decrease(counter)
  counter - 1
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



## Further exploration:
=begin
We specify 10 two times, which looks a bit redundant. It should 
be possible to specify it only once. Can you refactor the code 
accordingly?
=end

def decrease(counter)
  counter - 1
end

counter = 10

counter.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH'

=begin
Output:
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
LAUNCH
=end
