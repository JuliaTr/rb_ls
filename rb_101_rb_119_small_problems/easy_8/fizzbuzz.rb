=begin
Write a method that takes two arguments: the first is the 
starting number, and the second is the ending number. Print 
out all numbers from the starting number to the ending 
number, except if a number is divisible by 3, print "Fizz", 
if a number is divisible by 5, print "Buzz", and finally if 
a number is divisible by 3 and 5, print "FizzBuzz".
=end

def fizzbuzz(starting_number, end_number)
  arr = (starting_number..end_number).to_a
  new_arr = []
  counter = 0

  while counter < arr.size
    current_number = arr[counter]
    if (current_number % 3 == 0) && (current_number % 5 == 0)
      new_arr << 'FizzBuzz'
    elsif current_number % 3 == 0
      new_arr << 'Fizz'
    elsif current_number % 5 == 0
      new_arr << 'Buzz'
    else
      new_arr << current_number
    end

    counter += 1
  end

  new_arr.join(', ')
end

puts fizzbuzz(1, 15) 
# -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# Words as expected.



## Possible solution:
def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end

  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end

fizzbuzz(1, 15) 
# -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
