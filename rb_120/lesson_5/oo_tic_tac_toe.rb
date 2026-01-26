=begin
There's a notion of a "game state", which should represent 
the current state of the board. RPS game didn't have game state, only choices.

1. Write a description of the problem and extract major nouns and verbs.
2. Make an initial guess at organizing the verbs into nouns and do a
  spike to explore the problem with temporary code.
3. Optional - when we have a better idea of the problem, model your thoughts
  into CRC cards.



NOUNS AND VERBS

Game description:
Tic Tac Toe is a 2-player board game played on a 3x3 grid. Players
take turns marking a square. The first player mark 3 squares in a row wins.

Nouns: board, player, square, grid
Verbs: play, mark

Organize them:
Board   ("grid" is the same as a Board)
Square
Player
-mark
-play
=end



## SPIKE
# 1. Create an `initialize` method. Think about possible "states"
# for the objects of the class.
class Board
  def initialize
    # We need some way to model the 3x3 grid. Maybe "squares"?
    # What data structure should we use?
    # - array/hash of Square objects?
    # - array/hash of strings or integers?
  end
end

class Square
  def initialize
    # maybe a "status" to keep track of this square's mark?
  end
end

class Player
  def initialize
    # maybe a "marker" to keep track of this player's symbol {ie. 'X' or 'O')
  end

  def mark
  end

  def play
  end
end

=begin
Whether all the classes above are needed? Do we really need a `Square`
or `Player` yet?
=end

# 2. Orchestration engine:
class TTTGame
  def play
    # 3. Add methods we wish existed:
    display_welcome_message
    loop do
      display_board
      first_player_moves
      break if someone_won? || board_full

      second_player_moves
      break if someone_won? || board_full?
    end
    display_result
    display_goodbye_message
  end
end

# to kick off the game
game = TTTGame.new
game.play
