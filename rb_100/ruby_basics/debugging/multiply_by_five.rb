# When the user inputs `10`, we expect the program to print 
# `The result is 50!`, but that's not the output we see. Why not?

def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp

puts "The result is #{multiply_by_five(number)}!"

=begin
Hello! Which number would you like to multiply by 5?
10
The result is 1010101010!
=end



## Bug fix:
def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp.to_i

puts "The result is #{multiply_by_five(number)}!"

=begin
Hello! Which number would you like to multiply by 5?
10
The result is 50!
=end
