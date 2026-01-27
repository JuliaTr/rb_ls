## Initial spike:
class Board
  def initialize
  end
end

class Square
  def initialize
  end
end

class Player
  def initialize
  end

  def mark
  end
end

class TTTGame
  def play
    display_welcome_message
    loop do
      display_board
      first_player_moves
      break if someone_won? || board_full?

      second_player_moves
      break if someone_won? || board_full?
    end
    display_result
    display_goodbye_message
  end
end

game = TTTGame.new
game.play




## Walk-through:
class Board
  def initialize
  end
end

class Square
  def initialize
  end
end

class Player
  def initialize
  end

  def mark
  end
end

class TTTGame
  # Step 1:
  def display_welcome_message
    puts 'Welcome to Tic Tac Toe!'
    puts ''
  end

  def display_goodbye_message
    puts 'Thank you for playing Tic Tac Toe! Goodbye!'
  end

  def display_board
    puts ''
    puts '    |       |'
    puts ' x  |       |'
    puts '    |       |'
    puts '-----------------'
    puts '    |       |'
    puts '    |       |  x'
    puts '    |       |'
    puts '-----------------'
    puts '    |       |'
    puts '    |       |'
    puts '    |       |'
    puts ''
  end

  def play
    display_welcome_message
    loop do
      display_board
      break
      first_player_moves
      break if someone_won? || board_full?

      second_player_moves
      break if someone_won? || board_full?
    end
    # display_result
    display_goodbye_message
  end
end

game = TTTGame.new
game.play

=begin
Output for Step 1:
Welcome to Tic Tac Toe!


    |       |
 x  |       |
    |       |
-----------------
    |       |
    |       |  x
    |       |
-----------------
    |       |
    |       |
    |       |

Thank you for playing Tic Tac Toe! Goodbye!
=end