class Board
  # Step 2:
  INITIAL_MARKER = " "  # need to change value

  def initialize
    # {1 => ' ', 2 => ' '...}
    # @squares = {1 => Square.new('R'), 2 => Square.new(' ')}
    @squares = {}
    (1..9).each { |key| @squares[key] = Square.new(INITIAL_MARKER)}
  end

  def get_square_at(key)
    # We can retrieve the value associated with key
    @squares[key]
  end
end

class Square
  # Step 2:
  def initialize(marker)
    @marker = marker
  end

  def to_s
    @marker
  end
end

class Player
  def initialize
  end

  def mark
  end
end

class TTTGame
  # Step 2:
  # The `attr_reader` gives access to reference `@board` throughout
  # rest of our methods.
  attr_reader :board

  def initialize
    # This board object, which is an object of the `Board` class
    # represents a state of the board at any point in time.
    @board = Board.new
  end

  # Step 1:
  def display_welcome_message
    puts 'Welcome to Tic Tac Toe!'
    puts ''
  end

  def display_goodbye_message
    puts 'Thank you for playing Tic Tac Toe! Goodbye!'
  end

  # `board.get_square_at(1)`: we call `get_square_at` on `board`
  # object to get a square `1`.
  # String interpolation call `to_s` defined in `Square` class on default
  def display_board
    puts ""
    puts "     |      |"
    puts "  #{board.get_square_at(1)}  |  #{board.get_square_at(2)}   |  #{board.get_square_at(3)}"
    puts "     |      |"
    puts "-----------------"
    puts "     |      |"
    puts "  #{board.get_square_at(4)}  |  #{board.get_square_at(5)}   |  #{board.get_square_at(6)}"
    puts "     |      |" 
    puts "-----------------"
    puts "     |      |"
    puts "  #{board.get_square_at(7)}  |  #{board.get_square_at(8)}   |  #{board.get_square_at(9)}"
    puts "     |      |"
    puts ""
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
    # display_board
    display_goodbye_message
  end
end

game = TTTGame.new
game.play

=begin
Before defining `to_s` in `Square` class:
$ ruby step_2.rb
Welcome to Tic Tac Toe!


    |       |
 #<Square:0x00000001101c3ae8>  |       |
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



After defining `to_s` method in `Square` class:
 # @squares = {1 => Square.new('R'), 2 => Square.new(' ')}:
$ ruby step_2.rb
Welcome to Tic Tac Toe!


    |       |
 R  |       |
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



$ ruby step_2.rb
Welcome to Tic Tac Toe!


    |       |
 L  |       |
    |       |
-----------------
    |       |
    |       |
    |       |
-----------------
    |       |
    |       |
    |       |

Thank you for playing Tic Tac Toe! Goodbye!



`INITIAL_MARKER = 'L'`:
$ ruby step_2.rb
Welcome to Tic Tac Toe!


     |      |
  L  |  L   |  L
     |      |
-----------------
     |      |
  L  |  L   |  L
     |      |
-----------------
     |      |
  L  |  L   |  L
     |      |

Thank you for playing Tic Tac Toe! Goodbye!



`INITIAL_MARKER = ' '`:
$ ruby step_2.rb
Welcome to Tic Tac Toe!


     |      |
     |      |   
     |      |
-----------------
     |      |
     |      |   
     |      |
-----------------
     |      |
     |      |   
     |      |

=end
