## On Step 5 - Take turns:

class Board
  INITIAL_MARKER = ' '

  def initialize
    @squares = {}
    (1..9).each { |key| @squares[key] = Square.new(INITIAL_MARKER) }
  end

  def get_square_at(key)
    @squares[key]
  end

  def set_square_at(key, marker)
    @squares[key].marker = marker
  end

  # Step 5:
  def unmarked_keys
    # it could be `@squares.select { |_, sq| sq.unmarked? }.keys`
    @squares.keys.select { |key| @squares[key].unmarked? }
    # `board.unmarked_keys` will give us an array of keys are yet to be marked
  end
end

class Square
  attr_accessor :marker

  def initialize(marker)
    @marker = marker
  end

  def to_s
    @marker
  end

  def unmarked?
    marker == Board::INITIAL_MARKER
  end
end

class Player
  attr_reader :marker

  def initialize(marker)
    @marker = marker
  end

  def mark
  end
end

class TTTGame
  HUMAN_MARKER = 'X'
  COMPUTER_MARKER = 'O'

  attr_reader :board, :human, :computer

  def initialize
    @board = Board.new
    @human = Player.new(HUMAN_MARKER)
    @computer = Player.new(COMPUTER_MARKER)
  end

  def display_welcome_message
    puts 'Welcome to Tic Tac Toe!'
    puts ''
  end

  def display_goodbye_message
    puts 'Thank you for playing Tic Tac Toe! Goodbye!'
  end

  def display_board
    puts ""
    puts "     |       |"
    puts "  #{board.get_square_at(1)}  |  #{board.get_square_at(2)}    |  #{board.get_square_at(3)}"
    puts "     |       |" 
    puts "-----------------"
    puts "     |       |"
    puts "  #{board.get_square_at(4)}  |  #{board.get_square_at(5)}    |  #{board.get_square_at(6)}"
    puts "     |       |" 
    puts "-----------------"
    puts "     |       |"
    puts "  #{board.get_square_at(7)}  |  #{board.get_square_at(8)}    |  #{board.get_square_at(9)}"
    puts "     |       |"
    puts ""
  end

  def human_moves
    # Step 5:
    puts "Choose a square between (#{board.unmarked_keys.join(', ')}):"
    square = nil
    loop do
      square = gets.chomp.to_i
      # Step 5:
      break if board.unmarked_keys.include?(square)
      puts "Sorry, that's not a valid choice"
    end

    board.set_square_at(square, human.marker)
  end

  def computer_moves
    # Step 5:
    board.set_square_at(board.unmarked_keys.sample, computer.marker)
  end

  def play
    # Step 5:
    display_welcome_message
    display_board
    loop do
      human_moves
      # break if someone_won? || board_full?

      computer_moves
      display_board
      # break if someone_won? || board_full?
      # break
    end
    # display_result
    display_goodbye_message
  end
end

game = TTTGame.new
game.play

=begin
$ ruby step_5.rb
Welcome to Tic Tac Toe!


     |       |
     |       |   
     |       |
-----------------
     |       |
     |       |   
     |       |
-----------------
     |       |
     |       |   
     |       |

Choose a square between 1-9:
5

     |       |
     |       |   
     |       |
-----------------
     |       |
     |  X    |   
     |       |
-----------------
     |       |
  O  |       |   
     |       |

Thank you for playing Tic Tac Toe! Goodbye!



$ ruby step_5.rb
Welcome to Tic Tac Toe!


     |       |
     |       |   
     |       |
-----------------
     |       |
     |       |   
     |       |
-----------------
     |       |
     |       |   
     |       |

Choose a square between (1, 2, 3, 4, 5, 6, 7, 8, 9):
5

     |       |
     |       |   
     |       |
-----------------
     |       |
     |  X    |  O
     |       |
-----------------
     |       |
     |       |   
     |       |

Choose a square between (1, 2, 3, 4, 7, 8, 9):
1

     |       |
  X  |       |   
     |       |
-----------------
     |       |
  O  |  X    |  O
     |       |
-----------------
     |       |
     |       |   
     |       |

Choose a square between (2, 3, 7, 8, 9):
5
Sorry, that's not a valid choice
6
Sorry, that's not a valid choice
2

     |       |
  X  |  X    |   
     |       |
-----------------
     |       |
  O  |  X    |  O
     |       |
-----------------
     |       |
  O  |       |   
     |       |

Choose a square between (3, 8, 9):
3 

     |       |
  X  |  X    |  X
     |       |
-----------------
     |       |
  O  |  X    |  O
     |       |
-----------------
     |       |
  O  |  O    |   
     |       |

Choose a square between (9):
9
=end
