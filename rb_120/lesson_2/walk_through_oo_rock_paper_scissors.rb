# Step 1
class Player
  attr_accessor :move

  def initialize(player_type = :human)
    @player_type = player_type
    @move = nil
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
      self.move = ['rock', 'paper, scissors'].sample
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

  # Step 2
  def display_winner
    puts "You chose #{human.move}."
    puts "The computer chose #{computer.move}."

    case human.move
    when 'rock'
      puts "It's a tie" if computer.move == 'rock'
      puts "You won!" if computer.move == 'scissors'
      puts "Computer won!" if computer.move == 'paper'
    when 'paper'
      puts "It's a tie" if computer.move == 'paper'
      puts "You won!" if computer.move == 'rock'
      puts "Computer won!" if computer.move == 'scissors'
    when 'scissors'
      puts "It's a tie" if computer.move == 'scissors'
      puts "You won!" if computer.move == 'paper'
      puts "Computer won!" if computer.move == 'rock'
    end
  end

  # Step 3
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
