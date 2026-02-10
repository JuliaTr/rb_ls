=begin
Create an object-oriented number guessing class for numbers in 
the range 1 to 100, with a limit of 7 guesses per game.

Note that a game object should start a new game with a new number 
to guess with each call to `#play`.
=end

## Possible solution
class GuessingGame
  MAX_GUESSES = 7
  RANGE = 1..100

  RESULT_OF_GUESS_MESSAGE = {
    high:  "Your number is too high.",
    low:   "Your number is too low.",
    match: "That's the number!"
  }.freeze

  WIN_OR_LOSE = {
    high:  :lose,
    low:   :lose,
    match: :win 
  }.freeze

  RESULT_OF_GAME_MESSAGE = {
    win:  "You won!",
    lose: "You have no more guesses. You lost!"
  }.freeze

  def initialize
    @secret_number = nil
  end

  def play
    reset
    game_result = play_game
    display_game_end_message(game_result)
  end

  private

  def reset
    @secret_number = rand(RANGE)
  end

  def play_game
    result = nil

    MAX_GUESSES.downto(1) do |remaining_guesses|
      display_guesses_remaining(remaining_guesses)
      result = check_guess(obtain_one_guess)
      puts RESULT_OF_GUESS_MESSAGE[result]
      break if result == :match
    end

    WIN_OR_LOSE[result]
  end

  def display_guesses_remaining(remaining)
    puts
    if remaining == 1
      puts 'You have 1 guess remaining.'
    else
      puts "You have #{remaining} guesses remaining."
    end
  end

  def obtain_one_guess
    loop do
      print "Enter a number between #{RANGE.first} and #{RANGE.last}: "
      guess = gets.chomp.to_i
      return guess if RANGE.cover?(guess)
      print "Invalid guess. "
    end
  end

  def check_guess(guess_value)
    return :match if guess_value == @secret_number
    return :low if guess_value < @secret_number
    :high
  end

  def display_game_end_message(result)
    puts "", RESULT_OF_GAME_MESSAGE[result]
  end
end

game = GuessingGame.new
game.play
# Works as expected



## Refactored:
class GuessingGame
  def decrease_guesses
    @guesses -= 1
  end

  def valid_guess(rand_number)
    choice = nil

    loop do
      print "Enter a number between 1 and 100: "
      choice = gets.chomp.to_i

      if choice > 100 || choice < 1
        print "Invalid guess. "
      elsif choice == rand_number
        puts "That's the number!\n\n"
        break
      elsif choice > rand_number
        puts "Your guess is too high.\n\n"
        break
      else
        puts "Your guess is too low.\n\n"
        break
      end
    end
    
    choice
  end

  def play
    @guesses = 7
    rand_number = rand(1..100)

    loop do
      puts "You have #{@guesses} guesses remaining."
      choice = valid_guess(rand_number)
      decrease_guesses

      if @guesses == 0
        puts "You have no more guesses. You lost!\n\n"
        break
      elsif choice == rand_number
        puts "You won!\n\n"
        break
      end
    end
  end
end

game = GuessingGame.new
game.play
# Works as expected



## Solution:
class GuessingGame
  def initialize
    @guesses = 7
    @rand_number = rand(1..100)
  end

  def decrease_guesses
    @guesses -= 1
  end

  def play
    @rand_number = rand(1..100)
    p @rand_number

    loop do
      puts "You have #{@guesses} guesses remaining."
      choice = nil

      loop do
        print "Enter a number between 1 and 100: "
        choice = gets.chomp.to_i

        if choice > 100 || choice < 1
          print "Invalid guess. "
        elsif choice > @rand_number
          puts "Your guess is too high."
          puts
          break
        elsif choice < @rand_number 
          puts "Your guess is too low."
          puts
          break
        elsif choice == @rand_number
          puts "That's the number!"
          puts
          break
        end
      end

      decrease_guesses

      if @guesses == 0
        puts "You have no more guesses. You lost!"
        puts
        break
      elsif choice == @rand_number
        puts "You won!"
        puts
        break
      end
    end

    @guesses = 7
  end
end

game = GuessingGame.new
game.play

# Actual output (meets the pattern):
=begin
72
You have 7 guesses remaining.
Enter a number between 1 and 100: 104
Invalid guess. Enter a number between 1 and 100: 50
Your guess is too low.

You have 6 guesses remaining.
Enter a number between 1 and 100: 0
Invalid guess. Enter a number between 1 and 100: 23
Your guess is too low.

You have 5 guesses remaining.
Enter a number between 1 and 100: 72
That's the number!

You won!
=end

# The game should play like this:
=begin
You have 7 guesses remaining.
Enter a number between 1 and 100: 104
Invalid guess. Enter a number between 1 and 100: 50
Your guess is too low.

You have 6 guesses remaining.
Enter a number between 1 and 100: 75
Your guess is too low.

You have 5 guesses remaining.
Enter a number between 1 and 100: 85
Your guess is too high.

You have 4 guesses remaining.
Enter a number between 1 and 100: 0
Invalid guess. Enter a number between 1 and 100: 80

You have 3 guesses remaining.
Enter a number between 1 and 100: 81
That's the number!
=end

game.play
# Actual output (meets the pattern):
=begin
27
You have 7 guesses remaining.
Enter a number between 1 and 100: 23
Your guess is too low.

You have 6 guesses remaining.
Enter a number between 1 and 100: 87
Your guess is too high.

You have 5 guesses remaining.
Enter a number between 1 and 100: 65
Your guess is too high.

You have 4 guesses remaining.
Enter a number between 1 and 100: 11
Your guess is too low.

You have 3 guesses remaining.
Enter a number between 1 and 100: 34
Your guess is too high.

You have 2 guesses remaining.
Enter a number between 1 and 100: 4
Your guess is too low.

You have 1 guesses remaining.
Enter a number between 1 and 100: 2
Your guess is too low.

You have no more guesses. You lost!
=end

# The game should play like this:
=begin
You have 7 guesses remaining.
Enter a number between 1 and 100: 50
Your guess is too high.

You have 6 guesses remaining.
Enter a number between 1 and 100: 25
Your guess is too low.

You have 5 guesses remaining.
Enter a number between 1 and 100: 37
Your guess is too high.

You have 4 guesses remaining.
Enter a number between 1 and 100: 31
Your guess is too low.

You have 3 guesses remaining.
Enter a number between 1 and 100: 34
Your guess is too high.

You have 2 guesses remaining.
Enter a number between 1 and 100: 32
Your guess is too low.

You have 1 guess remaining.
Enter a number between 1 and 100: 32
Your guess is too low.

You have no more guesses. You lost!
=end
