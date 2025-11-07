=begin
A friend of yours wrote a number guessing game. The first 
version he shows you picks a random number between 1 and a 
provided maximum number and offers you a given number of 
attempts to guess it.

However, when you try it, you notice that it's not working as 
expected. Run the code and observe its behavior. Can you 
figure out what is wrong?
=end

def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number

      # Try again:
      guess_number(max_number, max_attempts)
    end
  end
end

guess_number(10, 3)

=begin
$ ruby number_guessing_game.rb
Make a guess: 1
Nope. Too small.
Make a guess: 3
Nope. Too small.
Make a guess: 7
Nope. Too big.
Make a guess: 6
Nope. Too big.
Make a guess: 5
Nope. Too small.
Make a guess: 6
Nope. Too small.
Make a guess: 7
Yes! You win.
Make a guess:  (infinite loop)
=end



## Bug fix:
def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  p winning_number

  attempts = 0

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
      break
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number

      # reenter the loop for the next attempt
    end
  end
end

guess_number(10, 3)
=begin
$ ruby number_guessing_game.rb
3
Make a guess: 3
Yes! You win.
$ ruby number_guessing_game.rb
4
Make a guess: 1
Nope. Too small.
Make a guess: 4
Yes! You win.
$ ruby number_guessing_game.rb
6
Make a guess: 2
Nope. Too small.
Make a guess: 8
Nope. Too big.
Make a guess: 4
Nope. Too small.
=end
