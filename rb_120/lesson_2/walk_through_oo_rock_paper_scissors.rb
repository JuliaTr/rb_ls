# Step 1
class Player
  attr_accessor :move, :name

  def initialize(player_type = :human)
    @player_type = player_type
    @move = nil

    # Step 4:
    set_name 
  end

  # Step 4:
  def set_name
    if human?
      n = ''
      loop do
        puts "What's your name?"
        # `n` is a local variable name
        n = gets.chomp
        break unless n.empty?
        # to prevent empty strings
        puts "Sorry, must enter a value."
      end

      self.name = n
    else
      # for the computer
      # setter method `name` is invoked on `self`
      self.name = ['R2D2', 'Hal', 'Chappie', 'Sonny', 'Number 5'].sample
    end
  end

  def choose
    if human?
      choice = nil
      loop do
        puts "Please choose rock, paper, scissors:"
        choice = gets.chomp
        break if ['rock', 'paper', 'scissors'].include? choice
        puts "Sorry, invalid choice."
      end

      self.move = choice
    else
      self.move = ['rock', 'paper', 'scissors'].sample
    end
  end

  def human?
    @player_type == :human
  end
end

## Game Orchestration Engine
class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Player.new
    @computer = Player.new(:computer)
  end

  # Step 1:
  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors!"
  end

  # Step 1:
  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors. Good bye!"
  end

  # Step 2:
  def display_winner
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."

    case human.move
    when 'rock'
      puts "It's a tie" if computer.move == 'rock'
      puts "#{human.name} won!" if computer.move == 'scissors'
      puts "#{computer.name} won!" if computer.move == 'paper'
    when 'paper'
      puts "It's a tie" if computer.move == 'paper'
      puts "#{human.name} won!" if computer.move == 'rock'
      puts "#{computer.name} won!" if computer.move == 'scissors'
    when 'scissors'
      puts "It's a tie" if computer.move == 'scissors'
      puts "#{human.name} won!" if computer.move == 'paper'
      puts "#{computer.name} won!" if computer.move == 'rock'
    end
  end

  # Step 3:
  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include? answer.downcase
      puts "Sorry, must be y or n."
    end

    return true if answer == 'y'
    return false
  end

  def play
    display_welcome_message

    loop do # Step 3
      human.choose
      computer.choose
      display_winner
      break unless play_again?
    end
    display_goodbye_message
  end
end

RPSGame.new.play

=begin
$ ruby walk_through_oo_rock_paper_scissors.rb
What's your name?
Yuliia
Welcome to Rock, Paper, Scissors!
Please choose rock, paper, scissors:
paper
Yuliia chose paper.
Hal chose rock.
Yuliia won!
Would you like to play again? (y/n)
n
Thanks for playing Rock, Paper, Scissors. Good bye!
=end
